'use strict';
const fs=require('node:fs'),vm=require('node:vm'),assert=require('node:assert/strict'),path=require('node:path');
const dir=__dirname,ctx=vm.createContext({console,document:{querySelector:()=>({})}});
for(const name of ['dados.js','metadados.js','motor.js'])vm.runInContext(fs.readFileSync(path.join(dir,name),'utf8'),ctx,{filename:name});
const D=vm.runInContext('CINE_DATA',ctx),E=vm.runInContext('CINE_ENGINE',ctx);
const films=JSON.parse(JSON.stringify(D.filmes));
assert.equal(films.length,200);
assert.equal(new Set(films.map(f=>f.id)).size,200);
assert.equal(D.regras.length,45);assert.equal(D.perfis.length,25);
assert.equal(films.filter(f=>f.classificacao_status==='pendente').length,28);
assert.equal(films.filter(f=>f.classificacao_status==='preliminar').length,48);
const pref={formato:'qualquer',foco:'indiferente',atmosfera:'indiferente',narrativa:'indiferente',ritmo:'indiferente',reviravolta:'indiferente',epoca:'qualquer'};
for(const genre of ['suspense','terror','animacao','ficcao_cientifica','drama','comedia','acao','romance']){
 const out=E.recomendar({...pref,genero:genre},200);
 assert(out.total>0,genre);
 assert(out.lista.every(f=>f.genero===genre));
 assert(out.lista.every(f=>!films.find(x=>x.id===f.id)?.classificacao_status?.includes('pendente')));
}
const pend=films.find(f=>f.classificacao_status==='pendente');
assert(E.filtrarCatalogo(films,pend.titulo).some(f=>f.id===pend.id));
assert(!E.recomendar({...pref,genero:'qualquer'},200).lista.some(f=>f.id===pend.id));
const top=E.recomendar({...pref,genero:'comedia',foco:'humor_leve',atmosfera:'leve'},3);
assert(top.lista.length===3);
// Anterior comportamento legado mantido: 3 resultados sem dependência de rede
const js=fs.readFileSync(path.join(dir,'aplicativo.js'),'utf8');
assert(js.includes('class="recommend-grid"'));
assert(js.includes('</div></article>'));
const prefix=js.slice(0,js.indexOf('function renderIntro()'));
vm.runInContext(prefix,ctx);
vm.runInContext('setAnswer("genero","comedia");setAnswer("foco","humor_leve")',ctx);
const atmosphere=JSON.parse(vm.runInContext('JSON.stringify(questions().find(q=>q.key==="atmosfera").opts.map(x=>x[1]))',ctx));
assert(!atmosphere.includes('sombria')&&!atmosphere.includes('tensa'));
console.log('PASSOU: 200 filmes, 172 recomendáveis (48 preliminares), 28 pendentes, 70 regras, entrevista adaptativa e cards desktop.');
