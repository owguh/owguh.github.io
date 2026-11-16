/* Execute: node testes_local.cjs -- verifica lógica e mede dados sintéticos */
'use strict';
const fs=require('fs'),vm=require('vm'),assert=require('assert').strict, path=require('path'),{performance}=require('perf_hooks');
const dir=path.join(__dirname,'..');
const ctx=vm.createContext({performance,console,module:{exports:{}}});
for(const file of ['dados.js','motor.js','teste_escala.js']) vm.runInContext(fs.readFileSync(path.join(dir,file),'utf8'),ctx,{filename:file});
const D=vm.runInContext('CINE_DATA',ctx),E=vm.runInContext('CINE_ENGINE',ctx),B=vm.runInContext('CINE_BENCHMARK',ctx);
assert.equal(D.filmes.length,200);assert.equal(D.regras.length,45);assert.equal(D.perfis.length,25);
assert.equal(new Set(D.filmes.map(m=>m.id)).size,200);
const pref={genero:'terror',foco:'sobrenatural',atmosfera:'tensa',narrativa:'misterio',ritmo:'moderado',reviravolta:'indiferente'};
assert.equal(E.correspondeEpoca(D.filmes.find(x=>x.id==='o-iluminado'),'antigo'),true);
assert.equal(E.correspondeEpoca(D.filmes.find(x=>x.id==='chihiro'),'classico'),true);
assert.equal(E.correspondeEpoca(D.filmes.find(x=>x.id==='chihiro'),'antigo'),false);
assert.equal(E.correspondeEpoca(D.filmes.find(x=>x.id==='caddo-lake'),'recente'),true);
for(const epoca of ['antigo','intermediario','recente','classico']){
 const r=E.recomendar({...pref,epoca});
 for(const f of r.lista)assert.equal(E.correspondeEpoca(D.filmes.find(x=>x.id===f.id),epoca),true,`era mismatch ${epoca}`);
}
const all=E.recomendar({...pref,epoca:'qualquer'});
const old=E.recomendar({...pref});
assert.deepEqual(Array.from(all.lista,f=>f.id),Array.from(old.lista,f=>f.id));
const other=E.recomendar({genero:'qualquer',epoca:'classico',atmosfera:'indiferente',narrativa:'indiferente',ritmo:'indiferente',reviravolta:'indiferente'});
assert(other.lista.length>0);
assert(E.filtrarCatalogo(D.filmes,'chihiro').some(f=>f.id==='chihiro'));
assert(E.filtrarCatalogo(D.filmes,'mAtRiX').some(f=>f.id==='matrix'));
const benchmark=[];
for(const n of [1000,5000,10000]){
 let samples=[];
 for(let rep=0;rep<5;rep++)samples.push(B.medir(n));
 const med=k=>samples.map(x=>x[k]).sort((a,b)=>a-b)[2];
 benchmark.push({registros:n,gerar_ms:med('geracao').toFixed(2),busca_ms:med('busca').toFixed(2),inferir_ms:med('inferencia').toFixed(2),html24_ms:med('render24').toFixed(2),candidatos:samples[0].candidatos});
}
console.log('TESTES LOGICOS APROVADOS: 200 filmes, 70 regras, épocas, clássicos, filtros e ranking.');
console.table(benchmark);
fs.writeFileSync(path.join(__dirname,'RESULTADOS_TESTE_NODE.json'),JSON.stringify({ambiente:'Node '+process.version,info:'Dados sintéticos gerados a partir dos 124 registros classificados. Mediana de 5 rodadas, não mede telefone nem qualidade cinematográfica.',benchmark},null,2));
