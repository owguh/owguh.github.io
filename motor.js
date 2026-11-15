/* Motor de inferência: regras existentes preservadas; pendentes fora do ranking. */
'use strict';
const CINE_ENGINE = (() => {
  const D=CINE_DATA;
  const ruleOn=(r,f)=>Object.entries(r.se).every(([k,v])=>f[k]===v);
  const normalizar=p=>({formato:'qualquer',foco:'indiferente',atmosfera:'indiferente',narrativa:'indiferente',ritmo:'indiferente',reviravolta:'indiferente',epoca:'qualquer',...p});
  function inferir(pref){
    const f=normalizar(pref),tr=[];
    delete f.perfil;
    for(const r of D.perfis){if(ruleOn(r,f)){
      const perfil=r.entao.perfil;
      if(f.perfil && f.perfil!==perfil)throw Error('Conflito de perfis');
      f.perfil=perfil;tr.push({regra:r.id,fato:'perfil = '+perfil,justificativa:r.justificativa});
    }}
    return {f,tr};
  }
  function correspondeEpoca(f,epoca){
    if(epoca==='antigo')return f.ano<=1999;
    if(epoca==='intermediario')return f.ano>=2000 && f.ano<=2017;
    if(epoca==='recente')return f.ano>=2018;
    if(epoca==='classico')return f.classico_editorial===true;
    return true;
  }
  function mandatory(f,p){
    return (p.genero==='qualquer'||f.genero===p.genero)
      &&(p.formato==='qualquer'||f.formato===p.formato)
      &&(p.reviravolta!=='nao'||!f.tem_reviravolta)
      &&correspondeEpoca(f,p.epoca);
  }
  function pontuar(f,p,rr,tr){
    let pts=0,why=[],missing=[],active=[];
    const add=(n,t)=>{pts+=n;why.push(t)};
    if(p.genero!=='qualquer'&&f.genero===p.genero)add(6,'Corresponde ao gênero escolhido');
    if(p.formato!=='qualquer'&&f.formato===p.formato)add(2,'Atende ao formato desejado');
    if(p.atmosfera!=='indiferente'){if(f.atmosferas.includes(p.atmosfera))add(3,'Apresenta a atmosfera procurada');else missing.push('Atmosfera diferente da desejada');}
    if(p.narrativa!=='indiferente'){if(f.narrativas.includes(p.narrativa))add(4,'Possui o estilo narrativo escolhido');else missing.push('Estilo narrativo diferente do desejado');}
    if(p.ritmo!=='indiferente'){if(f.ritmo===p.ritmo)add(2,'Possui o ritmo desejado');else missing.push('Ritmo diferente do desejado');}
    if(p.reviravolta==='sim'){if(f.tem_reviravolta)add(3,'Atende à preferência por reviravoltas (sem spoilers)');else missing.push('Não foi classificado como filme de grandes reviravoltas');}
    if(p.foco!=='indiferente'&&p.perfil&&!f.tags.includes(p.perfil))missing.push('Não corresponde ao subestilo específico solicitado');
    if(p.epoca!=='qualquer')add(2,p.epoca==='classico'?'Classificação editorial como clássico (curadoria)':`Atende ao período de lançamento selecionado (${f.ano})`);
    for(const r of rr){if(f.tags.includes(r.entao.priorizar_tag)){add(r.entao.peso,r.id+': '+r.justificativa);active.push(r.id);}}
    return {id:f.id,titulo:f.titulo,ano:f.ano,pontos:pts,motivos:why,nao_atende:missing,regras_disparadas:active,perfil_inferido:p.perfil||null,trilha_inferencia:tr,genero:f.genero,formato:f.formato};
  }
  function recomendar(pref,lim=3,catalogo=D.filmes){
    const {f,tr}=inferir(pref), rr=D.regras.filter(r=>ruleOn(r,f));
    const a=[];
    for(const m of catalogo){if(m.classificacao_status==='pendente'||!mandatory(m,f))continue;
      const scored=pontuar(m,f,rr,tr);
      if(scored.pontos>0)a.push(scored);
    }
    // Empates: preferir menor número de critérios não atendidos e maior número de critérios atendidos.
    // Pontuação continua sendo a explicação principal; desempate é determinístico.
    a.sort((x,y)=>y.pontos-x.pontos || x.nao_atende.length-y.nao_atende.length || y.motivos.length-x.motivos.length || x.titulo.localeCompare(y.titulo,'pt-BR')); 
    return {lista:a.slice(0,lim),total:a.length,f,tr};
  }
  const normalizaTexto=s=>String(s||'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase();
  function filtrarCatalogo(catalogo,termo='',genero='todos'){
    const t=normalizaTexto(termo).trim();
    return catalogo.filter(f=>(genero==='todos'||f.genero===genero) && (!t||normalizaTexto(f.titulo).includes(t)));
  }
  return Object.freeze({inferir,correspondeEpoca,mandatory,pontuar,recomendar,filtrarCatalogo,normalizaTexto});
})();
if (typeof module !== 'undefined' && module.exports) module.exports = CINE_ENGINE;
