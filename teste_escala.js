/* Laboratório de desempenho. Registros gerados são SINTÉTICOS. */
'use strict';
const CINE_BENCHMARK = (()=>{
  const med=()=>performance.now();
  function medir(n){
    const t0=med(),base=CINE_DATA.filmes;
    let lista=Array.from({length:n},(_,i)=>{
      const f=base[i%base.length];
      return {...f,id:'benchmark-'+i,titulo:`[Teste ${i}] ${f.titulo}`,tags:f.tags,atmosferas:f.atmosferas,narrativas:f.narrativas};
    });
    const t1=med();
    const buscados=CINE_ENGINE.filtrarCatalogo(lista,'Matrix','todos');
    const t2=med();
    const pref={genero:'terror',foco:'psicologico',formato:'qualquer',epoca:'recente',atmosfera:'tensa',narrativa:'psicologica',ritmo:'moderado',reviravolta:'indiferente'};
    const resultado=CINE_ENGINE.recomendar(pref,3,lista);
    const t3=med();
    const pagina=lista.slice(0,24);
    const html=pagina.map(f=>`<article><h3>${f.titulo}</h3><small>${f.ano}</small></article>`).join('');
    if(html.length===0||!buscados.length||!resultado.lista.length)throw Error('O teste não retornou candidatos esperados');
    const t4=med();
    lista=null;
    return {n,geracao:t1-t0,busca:t2-t1,inferencia:t3-t2,render24:t4-t3,candidatos:resultado.total,achados:buscados.length};
  }
  return Object.freeze({medir});
})();
if(typeof module!=='undefined'&&module.exports)module.exports=CINE_BENCHMARK;
