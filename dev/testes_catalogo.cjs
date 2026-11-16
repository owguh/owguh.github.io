'use strict';
// Valida o catálogo inteiro (curado + automático). Rode depois de dev/expandir_catalogo.py:
//   node dev/testes_catalogo.cjs
const fs=require('fs'),vm=require('vm'),assert=require('node:assert/strict'),path=require('path');
const dir=path.join(__dirname,'..');
const ctx=vm.createContext({console,document:{querySelector:()=>({})}});
for(const f of ['dados.js','metadados.js','motor.js'])vm.runInContext(fs.readFileSync(path.join(dir,f),'utf8'),ctx,{filename:f});
const js=fs.readFileSync(path.join(dir,'aplicativo.js'),'utf8');
vm.runInContext(js.slice(0,js.indexOf('function renderIntro()')),ctx);
const D=vm.runInContext('CINE_DATA',ctx),M=vm.runInContext('CINE_METADATA',ctx),E=vm.runInContext('CINE_ENGINE',ctx);
const ATM_G=vm.runInContext('ATM_G',ctx),NAR_G=vm.runInContext('NAR_G',ctx),ROTULOS=vm.runInContext('ROTULOS',ctx);
const F=D.filmes,erros=[];
const check=(cond,msg)=>{if(!cond)erros.push(msg);};
const GEN=['suspense','terror','ficcao_cientifica','animacao','drama','comedia','acao','romance'];
const regraTags=new Set(D.regras.map(r=>r.entao.priorizar_tag));
const ids=new Set(),tmdb=new Map();
for(const f of F){
  const q=`${f.id} (${f.titulo})`;
  check(/^[a-z0-9-]+$/.test(f.id),`${q}: id inválido`);
  check(!ids.has(f.id),`${q}: id repetido`);ids.add(f.id);
  check(typeof f.titulo==='string'&&f.titulo.trim(),`${q}: sem título`);
  check(Number.isInteger(f.ano)&&f.ano>=1900&&f.ano<=new Date().getFullYear()+1,`${q}: ano inválido`);
  check(GEN.includes(f.genero),`${q}: gênero desconhecido ${f.genero}`);
  check(['live_action','animacao'].includes(f.formato),`${q}: formato inválido`);
  check(['preliminar','pendente',undefined].includes(f.classificacao_status),`${q}: status inválido`);
  if(f.tmdb_id){check(!tmdb.has(f.tmdb_id),`${q}: tmdb_id ${f.tmdb_id} repetido (também em ${tmdb.get(f.tmdb_id)})`);tmdb.set(f.tmdb_id,f.id);}
  if(f.classificacao_status!=='pendente'){
    check(['lento','moderado','rapido'].includes(f.ritmo),`${q}: ritmo inválido`);
    check(f.atmosferas.length>0&&f.narrativas.length>0,`${q}: sem atmosfera ou narrativa`);
    for(const t of f.tags)check(ROTULOS[t]||regraTags.has(t),`${q}: etiqueta sem rótulo ${t}`);
  }
  if(f.origem==='automatica'){
    check(f.atmosferas.every(a=>ATM_G[f.genero].includes(a)),`${q}: atmosfera fora das opções do gênero`);
    check(f.narrativas.every(n=>NAR_G[f.genero].includes(n)),`${q}: narrativa fora das opções do gênero`);
    check(f.tem_reviravolta===f.tags.includes('reviravolta')||f.genero!=='suspense',`${q}: etiqueta de reviravolta inconsistente`);
    check(M[f.id]&&M[f.id].poster,`${q}: filme automático sem metadados`);
  }
  if(M[f.id]&&M[f.id].poster)check(fs.existsSync(path.join(dir,'capas',f.id+'.jpg')),`${q}: capa marcada mas arquivo capas/${f.id}.jpg não existe`);
}
for(const k of Object.keys(M))check(ids.has(k),`metadados.js tem "${k}", que não existe em dados.js`);
// Todo gênero continua recomendável e cada subgênero tem filmes.
for(const g of GEN)check(E.recomendar({genero:g},5).lista.length===5,`gênero ${g} com menos de 5 recomendações`);
for(const p of D.perfis)check(F.some(f=>f.classificacao_status!=='pendente'&&f.tags.includes(p.entao.perfil)),`subgênero ${p.entao.perfil} sem nenhum filme`);
if(erros.length){console.error(`${erros.length} problema(s) no catálogo:`);erros.slice(0,40).forEach(e=>console.error(' - '+e));process.exit(1);}
const auto=F.filter(f=>f.origem==='automatica').length;
const porGenero=GEN.map(g=>`${g} ${F.filter(f=>f.genero===g).length}`).join(', ');
const capas=F.filter(f=>M[f.id]&&M[f.id].poster).length;
console.log(`CATÁLOGO VÁLIDO: ${F.length} filmes (${F.length-auto} curados, ${auto} automáticos), ${capas} com capa. Por gênero: ${porGenero}.`);
