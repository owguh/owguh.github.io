
'use strict';
// Port independente do motor Python v3.7; não acessa a internet ou a API TMDB.
const D=CINE_DATA;
const GER=[['Suspense','suspense'],['Terror','terror'],['Ficção científica','ficcao_cientifica'],['Animação','animacao'],['Drama','drama'],['Comédia','comedia'],['Ação','acao'],['Romance','romance'],['Tanto faz','qualquer']];
const GENRE_ICON={suspense:'🔍',terror:'🕯️',ficcao_cientifica:'🚀',animacao:'🎨',drama:'🎭',comedia:'😄',acao:'💥',romance:'💘',qualquer:'🎲'};
const FORM=[['Live-action','live_action'],['Animação','animacao'],['Tanto faz','qualquer']];
const RIT=[['Lento','lento'],['Moderado','moderado'],['Rápido','rapido'],['Tanto faz','indiferente']];
const REV=[['Sim, gosto de surpresas','sim'],['Prefiro evitar','nao'],['Tanto faz','indiferente']];
const ROT={investigacao:'Investigação',psicologica:'Psicológica',misterio:'Mistério',aventura:'Aventura',filosofica:'Filosófica',emocional:'Emocional',critica_social:'Crítica social',romantica:'Romântica'};
const ATMROT={leve:'Leve e descontraída',emocional:'Emocionante',reflexiva:'Reflexiva',fantastica:'Fantástica',tensa:'Tensa',sombria:'Sombria'};
const FOC={terror:['Qual tipo de terror mais interessa?', [['Psicológico','psicologico'],['Sobrenatural','sobrenatural'],['Folclórico / folk horror','folclorico'],['Investigativo','investigativo']]],suspense:['Qual suspense mais interessa?', [['Investigativo','investigativo'],['Enigmático','enigmatico'],['Psicológico','psicologico']]],animacao:['Que experiência você procura na animação?', [['Fantasia','fantasia'],['Aventura','aventura'],['História emocional','emocional']]],ficcao_cientifica:['Qual tipo de ficção científica?', [['Filosófica','filosofico'],['Aventura','aventura'],['Tecnologia e IA','tecnologia']]],drama:['Que enfoque você procura?', [['Superação','superacao'],['Relações humanas','relacoes'],['Crítica social','critica_social']]],comedia:['Que tipo de comédia?', [['Humor leve','humor_leve'],['Humor e emoção','humor_emocional'],['Sátira social','satira_social']]],acao:['Qual estilo de ação você prefere?', [['Espionagem','espionagem'],['Perseguições e adrenalina','perseguicao'],['Aventura e heroísmo','aventura']]],romance:['Que tipo de romance procura?', [['Romance leve','leve'],['Romance dramático','drama'],['Romance clássico','classico']]]};
// Cada grupo usa somente atmosferas pertinentes ao gênero; o subgênero refina a lista.
// Atmosferas não são equivalentes a gênero: comédia pode ser reflexiva, e suspense pode ser leve.
const ATM_G={
 comedia:['leve','emocional','reflexiva'],acao:['tensa','leve','emocional','reflexiva'],romance:['leve','emocional','reflexiva'],terror:['sombria','tensa','reflexiva'],
 suspense:['tensa','sombria','reflexiva','leve'],animacao:['fantastica','leve','emocional','reflexiva'],
 ficcao_cientifica:['fantastica','tensa','reflexiva','emocional'],drama:['emocional','reflexiva','sombria','leve'],
 qualquer:['leve','emocional','reflexiva','fantastica','tensa','sombria']
};
const ATM_F={
 acao:{espionagem:['tensa','sombria','reflexiva'],perseguicao:['tensa','leve'],aventura:['emocional','leve','tensa']},romance:{leve:['leve','emocional'],drama:['emocional','reflexiva'],classico:['emocional','reflexiva','leve']},
 comedia:{humor_leve:['leve','emocional'],humor_emocional:['emocional','leve','reflexiva'],satira_social:['reflexiva','leve']},
 terror:{psicologico:['tensa','sombria','reflexiva'],sobrenatural:['tensa','sombria'],folclorico:['sombria','tensa','reflexiva'],investigativo:['tensa','sombria']},
 animacao:{fantasia:['fantastica','emocional','leve'],aventura:['fantastica','leve','emocional'],emocional:['emocional','leve','reflexiva']},
 drama:{superacao:['emocional','reflexiva','leve'],relacoes:['emocional','reflexiva'],critica_social:['reflexiva','emocional','sombria']},
 ficcao_cientifica:{filosofico:['reflexiva','fantastica','tensa'],aventura:['fantastica','tensa','emocional'],tecnologia:['reflexiva','tensa','fantastica']}
};
const NAR_G={terror:['psicologica','misterio','investigacao','critica_social'],suspense:['investigacao','misterio','psicologica','critica_social'],animacao:['aventura','emocional','filosofica','critica_social'],ficcao_cientifica:['filosofica','aventura','misterio','psicologica'],drama:['emocional','critica_social','psicologica','filosofica'],comedia:['emocional','critica_social','aventura'],acao:['aventura','investigacao','critica_social','emocional'],romance:['romantica','emocional','filosofica'],qualquer:['aventura','emocional','investigacao','misterio','filosofica','critica_social','psicologica']};
const NAR_F={
 acao:{espionagem:['investigacao','aventura'],perseguicao:['aventura','investigacao'],aventura:['aventura','emocional','critica_social']},romance:{leve:['romantica','emocional'],drama:['romantica','emocional','filosofica'],classico:['romantica','emocional','filosofica']},
 comedia:{humor_leve:['aventura','emocional','critica_social'],humor_emocional:['emocional','aventura','critica_social'],satira_social:['critica_social','emocional','aventura']},
 terror:{psicologico:['psicologica','misterio','investigacao'],sobrenatural:['misterio','psicologica','investigacao'],folclorico:['misterio','psicologica','critica_social'],investigativo:['investigacao','misterio','psicologica']},
 suspense:{investigativo:['investigacao','misterio','psicologica'],enigmatico:['misterio','investigacao','psicologica'],psicologico:['psicologica','misterio','investigacao']},
 animacao:{fantasia:['aventura','emocional','filosofica'],aventura:['aventura','emocional'],emocional:['emocional','aventura','filosofica']},
 ficcao_cientifica:{filosofico:['filosofica','psicologica','misterio'],aventura:['aventura','misterio','filosofica'],tecnologia:['filosofica','misterio','aventura']},
 drama:{superacao:['emocional','filosofica'],relacoes:['emocional','psicologica'],critica_social:['critica_social','emocional','filosofica']}
};
const META=typeof CINE_METADATA==='object'?CINE_METADATA:{};
const byId=id=>D.filmes.find(x=>x.id===id);
const posterSrc=id=>META[id]?.poster?`capas/${encodeURIComponent(id)}.jpg`:null;
function imagePoster(f,alt,cls='poster-media'){
 const src=posterSrc(f.id);
 return src?`<img class="${cls}" src="${esc(src)}" alt="${esc(alt||('Pôster de '+f.titulo))}" loading="lazy" onerror="this.style.display='none'">`:'';
}
const APP=document.querySelector('#app');
const state={view:'intro',step:0,answers:{},chosen:null,seen:new Set(),shown:3,seed:1};
const esc=x=>String(x??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
// Rótulos com acentuação para as etiquetas internas (ids sem acento) exibidas na interface.
const ROTULOS={"acao_aventura":"Ação e aventura","acao_espionagem":"Ação · espionagem","acao_perseguicao":"Ação · perseguição","acolhedor":"Acolhedor","animacao_aventura":"Animação · aventura","animacao_emocional":"Animação emocional","animacao_fantasia":"Animação · fantasia","aventura":"Aventura","classico":"Clássico","comedia_emocional":"Comédia emocional","comedia_leve":"Comédia leve","comedia_social":"Comédia social","construcao_lenta":"Construção lenta","critica_social":"Crítica social","drama":"Drama","drama_critica_social":"Drama · crítica social","drama_relacoes":"Drama · relações humanas","drama_superacao":"Drama de superação","emocional":"Emocional","espionagem":"Espionagem","fantasia":"Fantasia","fantastica":"Fantástica","ficcao_aventura":"Ficção · aventura","ficcao_filosofica":"Ficção filosófica","ficcao_tecnologia":"Ficção · tecnologia e IA","filosofica":"Filosófica","filosofico":"Filosófico","folk_horror":"Folk horror","humor":"Humor","humor_emocional":"Humor e emoção","humor_leve":"Humor leve","indiferente":"Tanto faz","investigacao":"Investigação","investigativo":"Investigativo","lento":"Lento","leve":"Leve","misterio":"Mistério","misterio_complexo":"Mistério complexo","moderado":"Moderado","perseguicao":"Perseguição","psicologica":"Psicológica","psicologico":"Psicológico","rapido":"Rápido","reflexiva":"Reflexiva","reflexivo":"Reflexivo","reviravolta":"Reviravolta","ritmo_intenso":"Ritmo intenso","romance_classico":"Romance clássico","romance_drama":"Romance dramático","romance_dramatico":"Romance dramático","romance_leve":"Romance leve","romantica":"Romântica","sem_reviravolta":"Sem reviravolta","sombria":"Sombria","sombrio":"Sombrio","suspense_enigmatico":"Suspense enigmático","suspense_investigativo":"Suspense investigativo","suspense_psicologico":"Suspense psicológico","tensa":"Tensa","tensao_alta":"Tensão alta","terror_criaturas":"Terror de criaturas","terror_investigativo":"Terror investigativo","terror_psicologico":"Terror psicológico","terror_sobrenatural":"Terror sobrenatural","cinema_livre":"Cinema livre","cinema livre":"Cinema livre"};
const nice=s=>ROTULOS[s]||String(s||'').replaceAll('_',' ').replace(/(^|\s)\S/g,c=>c.toUpperCase());
const labelGenero=x=>(GER.find(a=>a[1]===x)||['Cinema'])[0];
const {recomendar}=CINE_ENGINE;
const EPO=[['Tanto faz','qualquer'],['Antigo · até 1999','antigo'],['2000 a 2017','intermediario'],['Mais recente · 2018 em diante','recente'],['Clássico · curadoria CineExpert','classico']];
const ANY=['Tanto faz','indiferente'];
const pickAtmosfera=(g,f)=>{
 const list=(ATM_F[g]&&ATM_F[g][f])||ATM_G[g]||ATM_G.qualquer;
 return [...list.map(v=>[ATMROT[v],v]),ANY];
};
const pickNarrativa=(g,f,a)=>{
 let list=[...((NAR_F[g]&&NAR_F[g][f])||NAR_G[g]||NAR_G.qualquer)];
 // A atmosfera também refina o estilo narrativo. Mantemos escolhas que existem no catálogo.
 if(g==='comedia'){
   if(a==='reflexiva')list=['critica_social','emocional','aventura'].filter(x=>list.includes(x));
   else if(a==='emocional')list=['emocional','aventura','critica_social'].filter(x=>list.includes(x));
   else if(a==='leve')list=['aventura','emocional','critica_social'].filter(x=>list.includes(x));
 }
 if(g==='terror'&&a==='tensa')list=['misterio','investigacao','psicologica','critica_social'].filter(x=>list.includes(x));
 if(g==='animacao'&&a==='emocional')list=['emocional','aventura','filosofica','critica_social'].filter(x=>list.includes(x));
 return [...list.map(x=>[ROT[x],x]),ANY];
};
// Une listas preservando a ordem (usado quando a pessoa escolhe dois gêneros).
const uniao=(...ls)=>[...new Set(ls.flat())];
const generosEscolhidos=(a=state.answers)=>Array.isArray(a.generos)&&a.generos.length>1?a.generos:null;
function questions(){
  const {genero:g,foco:f,atmosfera:a}=state.answers;
  const q=[{key:'genero',title:'Qual gênero você quer assistir?',opts:GER,multi:true}];
  if(!g)return q;
  const gs=generosEscolhidos();
  if(gs){
    // Dois gêneros: sem pergunta de subgênero (é específica de cada gênero); atmosfera e narrativa unem as opções dos dois.
    q.push({key:'atmosfera',title:'Qual atmosfera você procura?',opts:[...uniao(...gs.map(x=>ATM_G[x]||[])).map(v=>[ATMROT[v],v]),ANY]});
    q.push({key:'narrativa',title:'Qual estilo narrativo você prefere?',opts:[...uniao(...gs.map(x=>NAR_G[x]||[])).map(x=>[ROT[x],x]),ANY]});
    q.push({key:'ritmo',title:'Qual ritmo você prefere?',opts:RIT});
    if(gs.some(x=>['terror','suspense','ficcao_cientifica','acao'].includes(x)))q.push({key:'reviravolta',title:'Você quer grandes reviravoltas no roteiro?',opts:REV});
    q.push({key:'epoca',title:'Prefere um filme de qual época?',opts:EPO});
    return q;
  }
  if(FOC[g])q.push({key:'foco',title:FOC[g][0],opts:[...FOC[g][1],ANY]});
  if(g==='qualquer')q.push({key:'formato',title:'Você prefere animação ou live-action?',opts:FORM});
  const atmosTitle=g==='comedia'?'Qual clima de comédia combina com seu momento?':g==='terror'?'Que clima de terror você procura?':'Qual atmosfera você procura?';
  q.push({key:'atmosfera',title:atmosTitle,opts:pickAtmosfera(g,f)});
  const tailored={terror:'Que tipo de história de terror prefere?',suspense:'Como prefere que o mistério seja contado?',animacao:'Que tipo de história animada você busca?',comedia:'Que tipo de história engraçada você prefere?',acao:'Que tipo de aventura deseja acompanhar?',romance:'Que abordagem romântica procura?',drama:'Qual abordagem dramática você procura?'};
  q.push({key:'narrativa',title:tailored[g]||'Qual estilo narrativo você prefere?',opts:pickNarrativa(g,f,a)});
  q.push({key:'ritmo',title:'Qual ritmo você prefere?',opts:RIT});
  if(['terror','suspense','ficcao_cientifica','acao','qualquer'].includes(g))q.push({key:'reviravolta',title:'Você quer grandes reviravoltas no roteiro?',opts:REV});
  // Época por último: os filtros eliminatórios já são conhecidos e cada opção mostra quantos filmes restam.
  q.push({key:'epoca',title:'Prefere um filme de qual época?',opts:EPO});
  return q;
}
// Alterar uma resposta anterior invalida fatos dependentes, evitando escolhas incompatíveis.
// Gênero aceita até duas escolhas; "Tanto faz" é exclusivo. Mudar os gêneros recomeça as demais respostas.
function toggleGenre(v){
 const a=state.answers,prev=a.generos||(a.genero?[a.genero]:[]);
 let sel;
 if(v==='qualquer')sel=prev.length===1&&prev[0]==='qualquer'?[]:['qualquer'];
 else{sel=prev.filter(x=>x!=='qualquer');sel=sel.includes(v)?sel.filter(x=>x!==v):[...sel,v].slice(-2);}
 if(JSON.stringify(sel)===JSON.stringify(prev))return sel;
 state.answers=sel.length?{genero:sel[0]}:{};
 if(sel.length>1)state.answers.generos=sel;
 return sel;
}
function setAnswer(key,value){
 const old=state.answers[key];
 if(key==='genero'&&old!==value){state.answers={genero:value};return;}
 if(old!==value){
   const dependency={foco:['atmosfera','narrativa'],atmosfera:['narrativa']};
   for(const later of dependency[key]||[])delete state.answers[later];
 }
 state.answers[key]=value;
}
// ---------------------------------------------------------------------------
// Armazenamento local seguro (pode não existir em alguns navegadores e nos testes em Node).
// ---------------------------------------------------------------------------
const MODE_KEY='cineexpert-modo-banca',SEEN_KEY='cineexpert-vistos';
const store={
 get(k){try{return localStorage.getItem(k);}catch(e){return null;}},
 set(k,v){try{v==null?localStorage.removeItem(k):localStorage.setItem(k,v);}catch(e){}}
};

// ---------------------------------------------------------------------------
// Modo apresentação (banca) × modo usuário.
// Ativar: ?banca=1 na URL ou botão no rodapé. Desativar: ?banca=0 ou o mesmo botão.
// No modo usuário, IDs de regras, pontos, teste de escala e textos técnicos ficam ocultos.
// ---------------------------------------------------------------------------
let BANCA=false;
function readMode(){
 let p=null;try{p=new URLSearchParams(location.search).get('banca');}catch(e){}
 if(p==='1')store.set(MODE_KEY,'1');else if(p==='0')store.set(MODE_KEY,null);
 BANCA=p==='1'||(p!=='0'&&store.get(MODE_KEY)==='1');
}
function setBanca(on){
 BANCA=on;store.set(MODE_KEY,on?'1':null);
 if(!BANCA&&state.view==='stress')state.view='intro';
 renderChrome();render();
}
let restoring=false;
const snap=()=>({view:state.view,step:state.view==='quiz'?state.step:0,chosen:state.view==='film'?state.chosen:null,origin:state.origin||null});
const sameSnap=(a,b)=>!!a&&!!b&&a.view===b.view&&a.step===b.step&&a.chosen===b.chosen;
function syncHistory(){
 const s=snap(),cur=history.state;
 if(restoring){restoring=false;history.replaceState({cine:1,idx:cur&&cur.cine?cur.idx:0,s},'');return;}
 if(!cur||!cur.cine){history.replaceState({cine:1,idx:0,s},'');return;}
 if(sameSnap(cur.s,s))return;
 history.pushState({cine:1,idx:cur.idx+1,s},'');
}
function onPopState(e){
 const st=e.state;
 if(st&&st.cine){state.view=st.s.view;state.step=st.s.step||0;state.chosen=st.s.chosen;state.origin=st.s.origin;}
 else{state.view='intro';state.step=0;}
 restoring=true;render();
}
// Botões "Voltar" da interface usam o mesmo histórico do aparelho.
function goBack(fallback){
 const cur=history.state;
 if(cur&&cur.cine&&cur.idx>0)history.back();
 else{fallback();render();}
}
const startQuiz=(keep=false)=>{
 if(!keep)state.answers={};
 state.step=0;state.shown=3;state.seed=(Date.now()>>>0);state.view='quiz';render();
};

// ---------------------------------------------------------------------------
// Recomendação no nível da interface (o motor em motor.js não muda).
// ---------------------------------------------------------------------------
const CMP=(x,y)=>y.pontos-x.pontos||x.nao_atende.length-y.nao_atende.length||y.motivos.length-x.motivos.length||x.titulo.localeCompare(y.titulo,'pt-BR');
// Dois gêneros: roda o motor uma vez por gênero e une os resultados pela mesma ordenação.
function recApp(ans,lim=999){
 const gs=generosEscolhidos(ans);
 if(!gs)return recomendar(ans,lim);
 const parts=gs.map(g=>recomendar({...ans,genero:g,foco:'indiferente'},999));
 const ids=new Set(),all=[];
 parts.forEach(p=>p.lista.forEach(x=>{if(!ids.has(x.id)){ids.add(x.id);all.push(x);}}));
 all.sort(CMP);
 return {lista:all.slice(0,lim),total:all.length,f:{...parts[0].f,perfil:null},tr:[]};
}
// Quantos filmes elegíveis existem para cada época, dadas as respostas atuais.
const epochCount=v=>recApp({...state.answers,epoca:v}).total;
// Empates exatos (mesma pontuação e mesmas pendências) são embaralhados com uma semente por sessão,
// para que a mesma resposta não devolva sempre os mesmos títulos. A ordem por pontuação nunca muda.
const hash=s=>{let h=2166136261;for(const c of String(s)){h^=c.charCodeAt(0);h=Math.imul(h,16777619);}return h>>>0;};
function tieShuffle(list,seed){
 const out=[];let i=0;
 while(i<list.length){
   let j=i;while(j<list.length&&list[j].pontos===list[i].pontos&&list[j].nao_atende.length===list[i].nao_atende.length)j++;
   out.push(...list.slice(i,j).sort((a,b)=>hash(seed+a.id)-hash(seed+b.id)));i=j;
 }
 return out;
}

// Exemplos reais do catálogo para cada opção (nunca para reviravoltas, que seria spoiler).
const rating=f=>Number(META[f.id]?.vote_average||0);
function exemplos(pred,n=2){
 return D.filmes.filter(f=>f.classificacao_status!=='pendente'&&pred(f))
  .sort((a,b)=>rating(b)-rating(a)||a.titulo.localeCompare(b.titulo,'pt-BR')).slice(0,n).map(f=>f.titulo);
}
const perfilTag=(g,foco)=>D.perfis.find(r=>r.se.genero===g&&r.se.foco===foco)?.entao.perfil||null;
const focoLabel=(g,f)=>(FOC[g]?.[1].find(x=>x[1]===f)||[nice(f)])[0];
function selectedGenres(){const a=state.answers;return generosEscolhidos()||(a.genero&&a.genero!=='qualquer'?[a.genero]:[]);}
function optionExamples(key,val){
 if(val==='indiferente'||val==='qualquer')return [];
 const a=state.answers,gs=selectedGenres(),inG=f=>!gs.length||gs.includes(f.genero);
 const tag=gs.length===1&&a.foco&&a.foco!=='indiferente'?perfilTag(gs[0],a.foco):null;
 const inFoco=f=>!tag||f.tags.includes(tag);
 if(key==='genero')return exemplos(f=>f.genero===val);
 if(key==='foco'){const t=perfilTag(a.genero,val);return t?exemplos(f=>f.genero===a.genero&&f.tags.includes(t)):[];}
 if(key==='formato')return exemplos(f=>f.formato===val);
 if(key==='atmosfera')return exemplos(f=>inG(f)&&inFoco(f)&&f.atmosferas.includes(val));
 if(key==='narrativa'){
   const comAtm=exemplos(f=>inG(f)&&inFoco(f)&&f.narrativas.includes(val)&&(!a.atmosfera||a.atmosfera==='indiferente'||f.atmosferas.includes(a.atmosfera)));
   return comAtm.length?comAtm:exemplos(f=>inG(f)&&f.narrativas.includes(val));
 }
 if(key==='ritmo')return exemplos(f=>inG(f)&&inFoco(f)&&f.ritmo===val);
 return [];
}

// "Já vi esse": lista local por aparelho.
function loadSeen(){try{state.seen=new Set(JSON.parse(store.get(SEEN_KEY)||'[]'));}catch(e){state.seen=new Set();}}
function saveSeen(){store.set(SEEN_KEY,state.seen.size?JSON.stringify([...state.seen]):null);}

function toast(msg){
 let t=document.getElementById('toast');
 if(!t){t=document.createElement('div');t.id='toast';t.className='toast';t.setAttribute('role','status');document.body.appendChild(t);}
 t.textContent=msg;t.classList.add('show');clearTimeout(toast.h);toast.h=setTimeout(()=>t.classList.remove('show'),2200);
}
async function shareResults(titles){
 const url=location.href.split(/[?#]/)[0];
 const text=`O CineExpert me recomendou: ${titles.join(', ')}. Descubra o seu filme:`;
 try{
   if(navigator.share){await navigator.share({title:'CineExpert',text,url});return;}
   await navigator.clipboard.writeText(`${text} ${url}`);toast('Texto copiado — é só colar!');
 }catch(e){if(e&&e.name==='AbortError')return;toast('Não foi possível compartilhar neste navegador.');}
}

// ---------------------------------------------------------------------------
// Interface 5.0 — minimalista: pôster em primeiro plano, Bodoni nos títulos,
// um único destaque (latão) e navegação fixa no celular.
// ---------------------------------------------------------------------------
const ICON={
 back:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M15 5l-7 7 7 7"/></svg>',
 share:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 15V3M7 8l5-5 5 5M5 12v7a2 2 0 002 2h10a2 2 0 002-2v-7"/></svg>',
 home:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M4 11l8-7 8 7v8a1 1 0 01-1 1h-5v-6h-4v6H5a1 1 0 01-1-1z"/></svg>',
 discover:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 3l1.9 5.6L19.5 10l-5.6 1.9L12 17.5l-1.9-5.6L4.5 10l5.6-1.4z"/></svg>',
 grid:'<svg viewBox="0 0 24 24" aria-hidden="true"><rect x="4" y="4" width="6.5" height="9" rx="1.5"/><rect x="13.5" y="4" width="6.5" height="9" rx="1.5"/><path d="M4 17h6.5M13.5 17H20M4 20.5h6.5M13.5 20.5H20"/></svg>',
 search:'<svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="11" cy="11" r="6.5"/><path d="M16 16l4.5 4.5"/></svg>',
 check:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M5 12.5l4.5 4.5L19 7.5"/></svg>',
 moon:'<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M20 14.5A8 8 0 019.5 4a8 8 0 1010.5 10.5z"/></svg>',
 sun:'<svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="12" r="4"/><path d="M12 2.5v2M12 19.5v2M4.6 4.6l1.4 1.4M18 18l1.4 1.4M2.5 12h2M19.5 12h2M4.6 19.4L6 18M18 6l1.4-1.4"/></svg>',
 star:'<svg class="star" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 2.8l2.8 5.9 6.4.8-4.7 4.4 1.2 6.4L12 17.2l-5.7 3.1 1.2-6.4-4.7-4.4 6.4-.8z"/></svg>'
};
const nota=f=>{const v=Number(META[f.id]?.vote_average||0);return v?v.toFixed(1).replace('.',','):'';};
const metaSpans=parts=>parts.filter(Boolean).map(p=>`<span>${esc(p)}</span>`).join('');
// Arte de pôster com título por baixo: se a imagem faltar ou falhar, o título aparece.
function posterArt(f,cls,eager=false){
 const src=posterSrc(f.id);
 return `<div class="${cls}"><span class="art-title">${esc(f.titulo)}</span>${src?`<img src="${esc(src)}" alt="" ${eager?'':'loading="lazy"'} onerror="this.remove()">`:''}</div>`;
}
function posterCard(f){
 const n=nota(f);
 return `<button type="button" class="pcard" data-film="${esc(f.id)}" aria-label="${esc(f.titulo)}, ${f.ano}">${posterArt(f,'pc-art')}${n?`<span class="pc-rate" aria-label="Nota ${n}">${ICON.star}${n}</span>`:''}${state.seen.has(f.id)?'<span class="pc-seen">Visto</span>':''}<span class="pc-title">${esc(f.titulo)}</span><span class="pc-sub">${esc(labelGenero(f.genero))}, ${f.ano}</span></button>`;
}
const rail=list=>`<div class="rail-wrap"><button type="button" class="rail-btn prev" aria-label="Filmes anteriores">${ICON.back}</button><div class="rail" role="list">${list.map(f=>`<div role="listitem">${posterCard(f)}</div>`).join('')}</div><button type="button" class="rail-btn next" aria-label="Próximos filmes">${ICON.back}</button></div>`;
// Esteiras: setas de anterior/próximo e arrastar com o mouse (no desktop não há rolagem lateral sem trackpad).
function enhanceRails(root){
 root.querySelectorAll('.rail-wrap').forEach(wrap=>{
   const r=wrap.querySelector('.rail'),prev=wrap.querySelector('.prev'),next=wrap.querySelector('.next');
   const sync=()=>{const max=r.scrollWidth-r.clientWidth-2;prev.disabled=r.scrollLeft<=2;next.disabled=r.scrollLeft>=max;wrap.classList.toggle('scrollable',max>0);};
   const step=dir=>r.scrollBy({left:dir*Math.max(r.clientWidth*0.85,200),behavior:matchMedia('(prefers-reduced-motion: reduce)').matches?'auto':'smooth'});
   prev.onclick=()=>step(-1);next.onclick=()=>step(1);
   r.addEventListener('scroll',sync,{passive:true});
   let drag=null;
   r.addEventListener('pointerdown',e=>{if(e.pointerType!=='mouse'||e.button!==0)return;drag={x:e.clientX,left:r.scrollLeft,moved:false};});
   r.addEventListener('pointermove',e=>{if(!drag)return;const dx=e.clientX-drag.x;if(!drag.moved&&Math.abs(dx)>6){drag.moved=true;r.classList.add('dragging');}if(drag.moved){r.scrollLeft=drag.left-dx;e.preventDefault();}});
   const end=()=>{if(!drag)return;const moved=drag.moved;drag=null;r.classList.remove('dragging');
     // Um arraste não deve abrir a ficha do pôster onde o mouse foi solto.
     if(moved)r.addEventListener('click',ev=>{ev.stopPropagation();ev.preventDefault();},{capture:true,once:true});};
   r.addEventListener('pointerup',end);r.addEventListener('pointerleave',end);
   r.addEventListener('dragstart',e=>e.preventDefault());
   sync();
 });
}
const recomendaveis=()=>D.filmes.filter(f=>f.classificacao_status!=='pendente');
function bindFilms(origin){APP.querySelectorAll('[data-film]').forEach(el=>el.onclick=()=>openFilm(el.dataset.film,origin));}

// Navegação: cabeçalho no desktop, barra flutuante no celular.
const NAV=[['intro','Início','home'],['quiz','Descobrir','discover'],['catalog','Catálogo','grid']];
function navActive(){
 const v=state.view==='results'?'quiz':state.view;
 document.querySelectorAll('[data-nav]').forEach(el=>{const on=el.dataset.nav===v;el.classList.toggle('on',on);on?el.setAttribute('aria-current','page'):el.removeAttribute('aria-current');});
 document.body.dataset.view=state.view;
}
function go(view){if(view==='quiz')return startQuiz(false);if(view==='catalog')state.catalogState=null;state.view=view;render();}
function renderChrome(){
 document.body.classList.toggle('banca',BANCA);
 const nav=document.getElementById('topnav'),tab=document.getElementById('tabbar'),acts=document.getElementById('topactions');
 if(nav)nav.innerHTML=NAV.map(([v,l])=>`<button type="button" data-nav="${v}">${l}</button>`).join('')+`<button type="button" data-nav="how">Como funciona</button>`;
 // Celular no navegador: atalhos no cabeçalho (a barra inferior disputaria espaço com a barra do Safari/Chrome).
 if(acts)acts.innerHTML=`<button type="button" class="ta-link" data-nav="catalog" aria-label="Catálogo">${ICON.grid}<span>Catálogo</span></button><button type="button" class="ta-cta" data-nav="quiz">Descobrir</button>`;
 // App instalado (tela inicial): barra inferior, mostrada só nesse modo pelo CSS.
 if(tab)tab.innerHTML=NAV.map(([v,l,i])=>`<button type="button" data-nav="${v}">${ICON[i]}<span>${l}</span></button>`).join('');
 document.querySelectorAll('[data-nav]').forEach(el=>el.onclick=()=>go(el.dataset.nav));
 // Tema claro/escuro: alterna, salva no aparelho e ajusta a cor da barra do navegador.
 const tt=document.getElementById('theme-toggle');
 if(tt){const dark=document.documentElement.dataset.theme==='dark';tt.innerHTML=dark?ICON.sun:ICON.moon;tt.setAttribute('aria-label',dark?'Usar tema claro':'Usar tema escuro');tt.title=tt.getAttribute('aria-label');
   tt.onclick=()=>{const next=document.documentElement.dataset.theme==='dark'?'light':'dark';if(next==='dark')document.documentElement.dataset.theme='dark';else delete document.documentElement.dataset.theme;store.set('cineexpert-tema',next);const m=document.querySelector('meta[name="theme-color"]');if(m)m.content=next==='dark'?'#0e0d16':'#ffffff';renderChrome();};}
 const home=document.getElementById('wordmark');if(home)home.onclick=()=>go('intro');
 const st=document.getElementById('net-status');
 if(st){st.hidden=!(BANCA||navigator.onLine===false);st.textContent=BANCA?'Modo apresentação':'Sem internet: tudo continua funcionando';}
 const left=document.getElementById('footer-info'),right=document.getElementById('footer-meta');
 if(left)left.textContent=BANCA
  ?'Edição acadêmica com motor local. Dados e imagens do TMDB, preparados antes da publicação; produto não endossado pelo TMDB.'
  :'Dados e imagens: TMDB. Este produto usa a API do TMDB, mas não é endossado pelo TMDB.';
 if(right)right.innerHTML=`${BANCA?`<span>${D.filmes.length} filmes, ${D.regras.length+D.perfis.length} regras (${D.regras.length} + ${D.perfis.length})</span>`:''}<button type="button" class="modetoggle" id="mode-toggle" aria-pressed="${BANCA}">${BANCA?'Sair do modo apresentação':'Modo apresentação'}</button>`;
 const t=document.getElementById('mode-toggle');if(t)t.onclick=()=>setBanca(!BANCA);
 navActive();
}

function renderIntro(){
 const base=recomendaveis().filter(f=>posterSrc(f.id));
 const top=[...base].sort((a,b)=>rating(b)-rating(a));
 const dia=Math.floor(Date.now()/864e5);
 // Parede de pôsteres do topo: 24 filmes bem avaliados, embaralhados por dia, em 3 colunas.
 const mural=[...top.slice(0,60)].sort((x,y)=>hash(dia+x.id)-hash(dia+y.id)).slice(0,24);
 const coluna=lista=>{const item=(f,dup)=>`<button type="button" class="wall-item" data-film="${esc(f.id)}" ${dup?'tabindex="-1" aria-hidden="true"':`aria-label="${esc(f.titulo)}, ${f.ano}"`}>${posterArt(f,'wall-art',true)}</button>`;return `<div class="wall-col"><div class="wall-track">${lista.map(f=>item(f,false)).join('')}${lista.map(f=>item(f,true)).join('')}</div></div>`;};
 const parede=`<div class="poster-wall" aria-label="Filmes do catálogo">${[0,1,2].map(c=>coluna(mural.filter((_,i)=>i%3===c))).join('')}</div>`;
 const classicos=base.filter(f=>f.classico_editorial).sort((a,b)=>rating(b)-rating(a)).slice(0,14);
 // Cada fileira mostra filmes diferentes das anteriores.
 const melhores=top.filter(f=>!classicos.includes(f)).slice(0,14);
 const recentes=base.filter(f=>f.ano>=new Date().getFullYear()-4&&!classicos.includes(f)&&!melhores.includes(f)).sort((a,b)=>rating(b)-rating(a)).slice(0,14);
 const generos=GER.filter(x=>x[1]!=='qualquer');
 const lead=BANCA
  ?'Um sistema especialista entrevista você sobre gênero, atmosfera, narrativa, ritmo e época, e recomenda filmes explicando cada regra aplicada — sem servidor e sem internet.'
  :'Responda algumas perguntas e receba três filmes escolhidos para você, cada um com o motivo da escolha.';
 const banca=BANCA?`<section class="banca-panel"><h2>Para a apresentação</h2><dl class="figures"><div><dt>Filmes</dt><dd>${D.filmes.length}</dd></div><div><dt>Regras de recomendação</dt><dd>${D.regras.length}</dd></div><div><dt>Regras de perfil</dt><dd>${D.perfis.length}</dd></div></dl><p>Esta edição roda inteira no aparelho: não precisa de FastAPI, computador ligado, chave do TMDB nem login. Pôsteres e metadados são preparados antes da publicação, sem expor o token.</p><div class="actions"><button class="btn" id="how">Como o sistema decide</button><button class="btn" id="stress">Testar com 10 mil registros</button></div></section>`:'';
 APP.innerHTML=`<section class="home-hero"><div class="hh-text"><h1>O filme certo para esta noite.</h1><p class="lead">${lead}</p><div class="actions"><button class="btn primary" id="start">Descobrir meu filme</button><button class="btn quiet" id="catalog">Ver catálogo</button></div><p class="fine">Sem cadastro. Funciona sem internet.</p></div>${parede}</section>
 <section class="row"><h2>Por gênero</h2><div class="genre-strip">${generos.map(([n,v])=>`<button type="button" class="gchip" data-genre="${v}">${esc(n)}</button>`).join('')}</div></section>
 ${classicos.length?`<section class="row"><div class="row-head"><h2>Clássicos da curadoria</h2><button type="button" class="link" id="see-all">Ver catálogo</button></div>${rail(classicos)}</section>`:''}
 <section class="row"><h2>Mais bem avaliados</h2>${rail(melhores)}</section>
 ${recentes.length?`<section class="row"><h2>Dos últimos anos</h2>${rail(recentes)}</section>`:''}
 ${banca}`;
 bindFilms('intro');
 document.getElementById('start').onclick=()=>startQuiz(false);
 document.getElementById('catalog').onclick=()=>go('catalog');
 const all=document.getElementById('see-all');if(all)all.onclick=()=>go('catalog');
 APP.querySelectorAll('[data-genre]').forEach(el=>el.onclick=()=>{state.catalogState={term:'',genre:el.dataset.genre,pagina:0};state.view='catalog';render();});
 if(BANCA){document.getElementById('how').onclick=()=>go('how');document.getElementById('stress').onclick=()=>go('stress');}
}
function renderHow(){
 const passos=[
  ['Perguntas que se adaptam','As perguntas mudam conforme o gênero: em terror não há pergunta de formato, e a atmosfera e a narrativa mudam com o tipo de terror ou de comédia. Com dois gêneros, as opções dos dois se combinam. A época vem por último e mostra quantos filmes restam em cada período.'],
  ['Um perfil a partir das respostas',`As regras P01 a P${D.perfis.length} deduzem um perfil narrativo, como “suspense investigativo” ou “terror psicológico”.`],
  ['Regras que pontuam cada filme',`As regras R01 a R${D.regras.length} procuram filmes com as características do perfil e somam pesos. A soma ordena os candidatos; empates exatos variam entre sessões.`],
  ['Uma explicação para cada escolha','Cada filme mostra quais das suas preferências atende e quais não. “Clássico” é curadoria, não sinônimo de antigo. Se a época tiver poucos filmes, a lista é completada com outras épocas, sempre sinalizadas.']];
 APP.innerHTML=`<section class="page"><button class="iconbtn" id="back" aria-label="Voltar">${ICON.back}</button><h1>Como o CineExpert decide</h1><p class="lead">As recomendações vêm de regras de produção, não de popularidade.</p><ol class="steps">${passos.map(([t,d])=>`<li><h2>${t}</h2><p>${d}</p></li>`).join('')}</ol><p class="fine">A pontuação é heurística: não é a probabilidade de você gostar. As características dos filmes são classificações editoriais ou automáticas, indicadas na ficha.</p><div class="actions"><button id="start" class="btn primary">Descobrir meu filme</button></div></section>`;
 document.getElementById('back').onclick=()=>goBack(()=>{state.view='intro';});
 document.getElementById('start').onclick=()=>startQuiz(false);
}

const HINTS={
 genero:'Escolha um gênero, ou dois se estiver entre eles.',
 epoca:'Ao lado de cada época, quantos filmes combinam com o que você respondeu.',
 reviravolta:'“Prefiro evitar” tira da lista os filmes com grandes reviravoltas. Nada é revelado.'
};
let advanceTimer=null;
function renderQuiz(){
 clearTimeout(advanceTimer);
 const q=questions();
 // Ao restaurar um passo pelo histórico, nunca pular perguntas ainda sem resposta.
 const firstMissing=q.findIndex(x=>!state.answers[x.key]);
 if(firstMissing>=0&&state.step>firstMissing)state.step=firstMissing;
 if(state.step>=q.length){state.view='results';return renderResults();}
 const current=q[state.step],isGenre=current.key==='genero';
 const selected=()=>isGenre?(state.answers.generos||[state.answers.genero].filter(Boolean)):[state.answers[current.key]];
 let opts=current.opts.map(([txt,val])=>({txt,val,count:null,disabled:false,ex:optionExamples(current.key,val)}));
 if(current.key==='epoca'){
   opts=opts.map(o=>{const n=epochCount(o.val);return {...o,count:n,disabled:n===0};});
   if(opts.some(o=>o.val===state.answers.epoca&&o.disabled))delete state.answers.epoca;
 }
 const countLabel=o=>o.count===null?'':o.count===0?'<span class="count none">nenhum filme</span>':o.count<3?`<span class="count few">só ${o.count} filme${o.count>1?'s':''}</span>`:`<span class="count">${o.count} filmes</span>`;
 const stepLabel=()=>state.answers.genero?`${state.step+1} de ${questions().length}`:'Cerca de 7 perguntas';
 const last=!!state.answers.genero&&state.step===q.length-1;
 const progress=state.answers.genero?100*(state.step+1)/q.length:100/7;
 APP.innerHTML=`<section class="quiz"><div class="quiz-top"><button class="iconbtn" id="prev" aria-label="Voltar">${ICON.back}</button><div class="stepbar" aria-hidden="true"><div style="width:${progress}%"></div></div><span class="step" id="step-label">${stepLabel()}</span></div><h1 class="q-title">${esc(current.title)}</h1><p class="hint">${HINTS[current.key]||'As próximas perguntas dependem desta resposta.'}</p><div class="choices${isGenre?' genre-choices':''}">${opts.map(o=>{const any=o.val==='qualquer'||o.val==='indiferente';return `<button class="choice${any?' any':''}" data-value="${esc(o.val)}" aria-pressed="${selected().includes(o.val)}" ${o.disabled?'disabled':''}><span class="choice-main">${esc(o.txt)}</span>${countLabel(o)}${o.ex.length?`<small class="ex">${esc(o.ex.join(', '))}</small>`:''}<span class="mark" aria-hidden="true">${ICON.check}</span></button>`;}).join('')}</div><div class="quiz-actions"><button class="btn primary" id="next" ${selected().length&&selected()[0]?'':'disabled'}>${last?'Ver recomendações':'Continuar'}</button></div><p class="fine">Suas respostas ficam só no seu aparelho.</p></section>`;
 const next=document.getElementById('next');
 const goNext=()=>{if(!selected()[0])return;state.step++;render();};
 document.querySelectorAll('.choice').forEach(btn=>btn.onclick=()=>{
   if(btn.disabled)return;
   if(isGenre){
     const sel=toggleGenre(btn.dataset.value);
     document.querySelectorAll('.choice').forEach(el=>el.setAttribute('aria-pressed',String(sel.includes(el.dataset.value))));
     next.disabled=!sel.length;
     document.getElementById('step-label').textContent=stepLabel();
     document.querySelector('.stepbar div').style.width=`${sel.length?100/questions().length:100/7}%`;
     return;
   }
   setAnswer(current.key,btn.dataset.value);
   document.querySelectorAll('.choice').forEach(el=>el.setAttribute('aria-pressed',String(el===btn)));
   next.disabled=false;
   // Pergunta de resposta única: avança sozinho após um instante (o "Voltar" continua disponível).
   clearTimeout(advanceTimer);advanceTimer=setTimeout(goNext,260);
 });
 document.getElementById('prev').onclick=()=>{clearTimeout(advanceTimer);goBack(()=>{if(state.step===0)state.view='intro';else state.step--;});};
 next.onclick=()=>{clearTimeout(advanceTimer);goNext();};
}

// O que cada filme atende (ou não) entre as preferências declaradas, com os valores reais.
const CHIP_NAME={genero:'Gênero',foco:'Subgênero',formato:'Formato',atmosfera:'Atmosfera',narrativa:'Narrativa',ritmo:'Ritmo',reviravolta:'Reviravoltas',epoca:'Época'};
const lower=s=>String(s).toLowerCase();
const ritmoLabel=v=>lower((RIT.find(x=>x[1]===v)||[nice(v)])[0]);
const epocaCurta=v=>lower((EPO.find(x=>x[1]===v)||[v])[0].split(' · ')[0]);
function matchInfo(r,p,perfil){
 const f=byId(r.id),it=[];
 if(p.genero&&p.genero!=='qualquer')it.push({key:'gênero',genre:true,ok:true,txt:`Gênero: ${lower(labelGenero(f.genero))}`});
 if(p.formato&&p.formato!=='qualquer'){const lab=x=>x==='animacao'?'animação':'live-action';it.push({key:'formato',ok:f.formato===p.formato,txt:`Formato: ${lab(f.formato)}`,no:`Formato: ${lab(f.formato)} (você pediu ${lab(p.formato)})`});}
 if(!generosEscolhidos(p)&&p.foco&&p.foco!=='indiferente'&&perfil){const lab=lower(focoLabel(p.genero,p.foco));it.push({key:'subgênero',ok:f.tags.includes(perfil),txt:`Subgênero: ${lab}`,no:`Subgênero diferente de “${lab}”`});}
 if(p.atmosfera&&p.atmosfera!=='indiferente'){const pedido=lower(ATMROT[p.atmosfera]);it.push({key:'atmosfera',ok:f.atmosferas.includes(p.atmosfera),txt:`Atmosfera: ${pedido}`,no:`Atmosfera: ${f.atmosferas.map(x=>lower(nice(x))).join(' e ')} (você pediu ${pedido})`});}
 if(p.narrativa&&p.narrativa!=='indiferente'){const pedido=lower(ROT[p.narrativa]);it.push({key:'narrativa',ok:f.narrativas.includes(p.narrativa),txt:`Narrativa: ${pedido}`,no:`Narrativa: ${f.narrativas.map(x=>lower(ROT[x]||nice(x))).join(' e ')} (você pediu ${pedido})`});}
 if(p.ritmo&&p.ritmo!=='indiferente')it.push({key:'ritmo',ok:f.ritmo===p.ritmo,txt:`Ritmo: ${ritmoLabel(p.ritmo)}`,no:`Ritmo: ${ritmoLabel(f.ritmo)} (você pediu ${ritmoLabel(p.ritmo)})`});
 if(p.reviravolta==='sim')it.push({key:'reviravoltas',ok:!!f.tem_reviravolta,txt:'Tem reviravoltas marcantes (sem spoilers)',no:'Não é conhecido por grandes reviravoltas'});
 if(p.reviravolta==='nao')it.push({key:'reviravoltas',ok:true,txt:'Sem grandes reviravoltas, como você preferiu'});
 if(p.epoca&&p.epoca!=='qualquer'){
   const ok=CINE_ENGINE.correspondeEpoca(f,p.epoca);
   it.push(p.epoca==='classico'
     ?{key:'época',ok,txt:'Clássico pela curadoria CineExpert',no:'Fora da curadoria de clássicos'}
     :{key:'época',ok,txt:`Época: ${epocaCurta(p.epoca)} (${f.ano})`,no:`Lançado em ${f.ano}, fora da época “${epocaCurta(p.epoca)}”`});
 }
 return it;
}
function movieCard(r,i,extra,p,perfil){
 const f=byId(r.id),m=META[f.id]||{};
 const items=matchInfo(r,p,perfil),crit=items.filter(x=>!x.genre),met=crit.filter(x=>x.ok).length,misses=crit.filter(x=>!x.ok);
 const pct=crit.length?Math.round(100*met/crit.length):100;
 const matchText=crit.length?`Atende ${met} de ${crit.length} preferência${crit.length>1?'s':''}`:'Do gênero que você escolheu';
 const src=posterSrc(f.id);
 const banca=BANCA?`<p class="micro">Regras e critérios do motor</p><ul>${r.motivos.map(s=>`<li>${esc(s)}</li>`).join('')}</ul>${r.regras_disparadas.length?`<div class="tags">${r.regras_disparadas.map(s=>`<span class="tag">${esc(s)}</span>`).join('')}</div>`:''}`:'';
 return `<article class="movie${i===0?' top-pick':''}${extra?' movie-extra':''}">${i===0&&src?`<div class="mc-backdrop" aria-hidden="true" style="background-image:url('${esc(src)}')"></div>`:''}${posterArt(f,'mc-art',i===0)}<div class="moviebody"><div class="rank">${i+1}ª escolha${extra?'<span class="badge-out">Fora da época escolhida</span>':''}</div><div class="movietitle"><h3>${esc(f.titulo)}</h3>${BANCA?`<div class="points">${r.pontos}<small>pontos</small></div>`:''}</div><div class="moviemeta">${metaSpans([labelGenero(f.genero),String(f.ano),m.runtime?`${m.runtime} min`:'',m.director?`Direção de ${m.director}`:''])}</div><div class="match"><div class="matchbar" aria-hidden="true"><div style="width:${pct}%"></div></div><span>${matchText}</span></div>${misses.length?`<div class="miss">Diferente em ${esc(misses.map(x=>x.key).join(', '))}</div>`:''}<details class="details" ${i===0?'open':''}><summary>Por que combina com você</summary><ul class="checks">${items.map(x=>`<li class="${x.ok?'ok':'no'}">${esc(x.ok?x.txt:x.no)}</li>`).join('')}</ul>${banca}</details><div class="card-actions"><button class="btn${i===0?' primary':''} card-open" data-film="${esc(f.id)}">Ver ficha</button><button class="btn quiet seen-btn" data-seen="${esc(f.id)}" title="Tira este filme da lista neste aparelho">Já vi esse</button></div></div></article>`;
}
function answerChips(){
 return questions().map((x,i)=>{
   const v=state.answers[x.key];if(!v)return '';
   let label;
   if(x.key==='genero')label=v==='qualquer'?'Gênero: tanto faz':(state.answers.generos||[v]).map(labelGenero).join(' + ');
   else if(v==='indiferente'||v==='qualquer')label=`${CHIP_NAME[x.key]}: tanto faz`;
   else if(x.key==='reviravolta')label=v==='sim'?'Com reviravoltas':'Sem reviravoltas';
   else if(x.key==='ritmo')label=`Ritmo ${ritmoLabel(v)}`;
   else label=(x.opts.find(o=>o[1]===v)||[v])[0];
   return `<button type="button" class="chip" data-step="${i}" title="Mudar esta resposta">${esc(label)}</button>`;
 }).join('');
}
function renderResults(){
 if(!state.answers.genero){state.view='intro';return renderIntro();}
 const p=state.answers,epoca=p.epoca||'qualquer',gs=generosEscolhidos();
 const result=recApp(p),perfil=result.f.perfil||null;
 const notSeen=x=>!state.seen.has(x.id);
 const main=tieShuffle(result.lista,state.seed).filter(notSeen);
 let extras=[];
 // Período com poucos filmes compatíveis: completa com outras épocas, sinalizando.
 if(epoca!=='qualquer'&&main.length<state.shown){
   const ids=new Set(result.lista.map(x=>x.id));
   extras=tieShuffle(recApp({...p,epoca:'qualquer'}).lista,state.seed)
     .filter(x=>!ids.has(x.id)&&notSeen(x)&&!CINE_ENGINE.correspondeEpoca(byId(x.id),epoca));
 }
 const pool=[...main.map(r=>({r,extra:false})),...extras.map(r=>({r,extra:true}))];
 const shown=pool.slice(0,state.shown),nExtra=shown.filter(x=>x.extra).length;
 const name=perfil?nice(perfil):gs?gs.map(labelGenero).join(' + '):p.genero==='qualquer'?'Cinema livre':labelGenero(p.genero);
 let aviso='';
 if(nExtra){
   const ec=esc(epocaCurta(epoca));
   aviso=`<p class="note limited">${main.length===0?`Nenhum filme da época “${ec}” combina com tudo o que você pediu`:`Só ${main.length} filme${main.length>1?'s':''} da época “${ec}” combina${main.length>1?'m':''} com tudo o que você pediu`}${state.seen.size?' (sem contar os que você já viu)':''}. Os demais são de outras épocas e estão marcados.</p>`;
 }
 const perfilMeta=BANCA?`<p class="fine">${result.tr.length?esc(result.tr.map(t=>t.regra).join(', ')):'Nenhum perfil específico ativado'}. ${result.total} candidatos com classificação para recomendação.</p>`:'';
 const restantes=pool.length-state.shown;
 const nota=BANCA
  ?'“Clássico” é uma etiqueta de curadoria editorial. As pontuações são heurísticas, não probabilidades. Classificações preliminares e automáticas exigem revisão humana. Tudo roda no aparelho, sem servidor.'
  :'A ordem considera quantas das suas preferências cada filme atende e o peso de cada uma.';
 APP.innerHTML=`<div class="results"><div class="results-head"><div><h1>Escolhemos para você</h1><p class="profile-name">${perfil?'Perfil':'Busca'}: ${esc(name)}</p>${perfilMeta}</div><button class="iconbtn" id="share" aria-label="Compartilhar recomendações">${ICON.share}</button></div><div class="chips" aria-label="Suas respostas; toque para mudar">${answerChips()}</div>${aviso}${shown.length?`<div class="recommend-grid">${shown.map((x,i)=>movieCard(x.r,i,x.extra,p,perfil)).join('')}</div>`:`<div class="empty"><h2>Nenhum filme com essa combinação</h2><p>Troque uma resposta por “Tanto faz”${state.seen.size?' ou mostre de novo os filmes que você marcou como vistos':''}.</p></div>`}<div class="more-row">${restantes>0?`<button class="btn" id="more">Ver mais ${Math.min(3,restantes)} opç${Math.min(3,restantes)>1?'ões':'ão'}</button>`:''}${state.seen.size?`<button class="link" id="clear-seen">Mostrar de novo ${state.seen.size} filme${state.seen.size>1?'s':''} marcado${state.seen.size>1?'s':''} como visto${state.seen.size>1?'s':''}</button>`:''}</div><p class="fine">${nota}</p><div class="actions"><button id="again2" class="btn quiet">Começar de novo</button><button class="link" id="how">${BANCA?'Explicar o motor especialista':'Como o sistema decide'}</button></div></div>`;
 APP.querySelectorAll('.card-open').forEach(el=>el.onclick=()=>openFilm(el.dataset.film,'results'));
 APP.querySelectorAll('.seen-btn').forEach(el=>el.onclick=()=>{state.seen.add(el.dataset.seen);saveSeen();renderResults();toast('Marcado como visto. Não vamos mais sugerir esse.');});
 APP.querySelectorAll('.chip').forEach(el=>el.onclick=()=>{state.step=Number(el.dataset.step);state.shown=3;state.view='quiz';render();});
 const more=document.getElementById('more');if(more)more.onclick=()=>{state.shown+=3;renderResults();};
 const clear=document.getElementById('clear-seen');if(clear)clear.onclick=()=>{state.seen.clear();saveSeen();renderResults();};
 document.getElementById('share').onclick=()=>shareResults(shown.map(x=>byId(x.r.id).titulo));
 document.getElementById('again2').onclick=()=>startQuiz(false);
 document.getElementById('how').onclick=()=>go('how');
}
function renderCatalog(){
 const genres=[['Todos','todos'],...GER.filter(x=>x[1]!=='qualquer')];
 const PAGE=24;let pagina=0,genre='todos';
 APP.innerHTML=`<section class="catalog"><div class="catalog-head"><h1>Catálogo</h1><p class="lead" id="count-label" role="status"></p></div><label class="search"><span class="sr-only">Buscar filme</span>${ICON.search}<input id="filter-title" type="search" placeholder="Buscar pelo título" autocomplete="off"></label><div class="genre-strip" role="group" aria-label="Filtrar por gênero">${genres.map(([n,v])=>`<button type="button" class="gchip" data-g="${v}" aria-pressed="false">${esc(n)}</button>`).join('')}</div><div id="catalog-list" class="catalog-grid"></div><div class="pager"><button class="btn quiet" id="page-prev">Anterior</button><span id="page-label" class="fine"></span><button class="btn quiet" id="page-next">Próxima</button></div><p class="fine">Títulos aguardando curadoria aparecem aqui, mas ainda não entram nas recomendações.</p></section>`;
 const $term=document.getElementById('filter-title'),$list=document.getElementById('catalog-list');
 function update(reset=false){
   if(reset)pagina=0;
   APP.querySelectorAll('[data-g]').forEach(el=>el.setAttribute('aria-pressed',String(el.dataset.g===genre)));
   const filtrados=CINE_ENGINE.filtrarCatalogo(D.filmes,$term.value,genre);
   const totalPag=Math.max(1,Math.ceil(filtrados.length/PAGE));
   pagina=Math.min(pagina,totalPag-1);
   const slice=filtrados.slice(pagina*PAGE,(pagina+1)*PAGE);
   document.getElementById('count-label').textContent=BANCA?`${filtrados.length} de ${D.filmes.length} filmes, ${slice.length} nesta página.`:`${filtrados.length} filme${filtrados.length===1?'':'s'}${genre!=='todos'?` de ${lower(labelGenero(genre))}`:''}.`;
   $list.innerHTML=slice.length?slice.map(f=>posterCard(f)).join(''):'<div class="empty catalog-empty"><h2>Nenhum filme encontrado</h2><p>Tente outro título ou escolha “Todos”.</p></div>';
   $list.querySelectorAll('[data-film]').forEach(el=>el.onclick=()=>{state.catalogState={term:$term.value,genre,pagina};openFilm(el.dataset.film,'catalog');});
   document.getElementById('page-label').textContent=`Página ${pagina+1} de ${totalPag}`;
   document.getElementById('page-prev').disabled=pagina===0;
   document.getElementById('page-next').disabled=pagina>=totalPag-1;
 }
 $term.addEventListener('input',()=>update(true));
 APP.querySelectorAll('[data-g]').forEach(el=>el.onclick=()=>{genre=el.dataset.g;update(true);});
 document.getElementById('page-prev').onclick=()=>{pagina--;update();window.scrollTo(0,0);};
 document.getElementById('page-next').onclick=()=>{pagina++;update();window.scrollTo(0,0);};
 if(state.catalogState){$term.value=state.catalogState.term||'';genre=state.catalogState.genre||'todos';pagina=state.catalogState.pagina||0;}
 update();
}
function openFilm(id,origin='catalog'){state.chosen=id;state.origin=origin;state.view='film';render();}
// Filmes parecidos: mesmo gênero, mais etiquetas e atmosferas em comum, desempate pela nota.
function parecidos(f,n=12){
 const tags=new Set(f.tags);
 return recomendaveis().filter(x=>x.id!==f.id&&x.genero===f.genero)
  .map(x=>({x,s:2*x.tags.filter(t=>tags.has(t)).length+x.atmosferas.filter(a=>f.atmosferas.includes(a)).length+(x.ritmo===f.ritmo?1:0)}))
  .sort((a,b)=>b.s-a.s||rating(b.x)-rating(a.x)).slice(0,n).map(o=>o.x);
}
// Sinopse e elenco ficam em sinopses/NN.json (64 pacotes), baixados só ao abrir uma ficha.
// O pacote é o mesmo hash FNV-1a do id usado em dev/dividir_metadados.py.
const PACOTES_SINOPSE=64,sinopsesCache={};
function carregarSinopse(id){
 const m=META[id]||{};
 if(m.overview!==undefined)return Promise.resolve({o:m.overview||'',c:m.cast||[]});
 const b=hash(id)%PACOTES_SINOPSE;
 if(!sinopsesCache[b])sinopsesCache[b]=fetch(`sinopses/${String(b).padStart(2,'0')}.json`).then(r=>{if(!r.ok)throw new Error(r.status);return r.json();}).catch(e=>{delete sinopsesCache[b];throw e;});
 return sinopsesCache[b].then(x=>x[id]||{o:'',c:[]});
}
function renderFilm(){
 const f=byId(state.chosen);if(!f){state.view='catalog';return renderCatalog();}
 const m=META[f.id]||{},src=posterSrc(f.id),visto=state.seen.has(f.id),n=nota(f);
 const similares=parecidos(f);
 APP.innerHTML=`<article class="film">${src?`<div class="film-backdrop" aria-hidden="true" style="background-image:url('${esc(src)}')"></div>`:''}<div class="film-top"><button class="iconbtn" id="film-back" aria-label="Voltar">${ICON.back}</button><button class="iconbtn" id="film-share" aria-label="Compartilhar filme">${ICON.share}</button></div><div class="film-hero">${posterArt(f,'film-art',true)}<div class="film-info"><h1>${esc(f.titulo)}</h1><p class="film-meta">${metaSpans([labelGenero(f.genero),String(f.ano),f.formato==='animacao'?'Animação':'',m.runtime?`${m.runtime} min`:''])}${n?`<span class="film-rate" title="Nota no TMDB">${ICON.star}${n}</span>`:''}</p><div class="film-actions"><button class="btn${visto?' done':' primary'}" id="film-seen" aria-pressed="${visto}">${visto?`${ICON.check} Visto`:'Marcar como visto'}</button>${m.tmdb_id?`<a class="btn quiet" href="https://www.themoviedb.org/movie/${Number(m.tmdb_id)}" target="_blank" rel="noopener noreferrer">Abrir no TMDB</a>`:''}</div><p class="film-synopsis loading" id="synopsis" aria-busy="true">Carregando sinopse…</p><button class="link" id="more-synopsis" hidden>Ler mais</button><dl class="credits">${m.director?`<div><dt>Direção</dt><dd>${esc(m.director)}</dd></div>`:''}<div id="cast-row" hidden><dt>Elenco</dt><dd id="cast"></dd></div></dl></div></div><section class="film-section"><h2>Como o CineExpert vê este filme</h2><dl class="traits"><div><dt>Atmosfera</dt><dd>${esc(f.atmosferas.map(nice).join(', '))}</dd></div><div><dt>Narrativa</dt><dd>${esc(f.narrativas.map(x=>ROT[x]||nice(x)).join(', '))}</dd></div><div><dt>Ritmo</dt><dd>${esc(nice(f.ritmo))}</dd></div></dl><div class="tags">${f.tags.filter(t=>t!=='sem_reviravolta').slice(0,8).map(t=>`<span class="tag">${esc(nice(t))}</span>`).join('')}</div><p class="fine">${f.origem==='automatica'?'Características geradas automaticamente a partir dos gêneros e das palavras-chave do TMDB, sem revisão editorial.':'Características definidas pela curadoria do CineExpert.'}</p></section>${similares.length?`<section class="film-section"><h2>Parecidos</h2>${rail(similares)}</section>`:''}</article>`;
 document.getElementById('film-back').onclick=()=>goBack(()=>{state.view=state.origin||'catalog';});
 document.getElementById('film-share').onclick=()=>shareResults([f.titulo]);
 document.getElementById('film-seen').onclick=()=>{state.seen.has(f.id)?state.seen.delete(f.id):state.seen.add(f.id);saveSeen();renderFilm();};
 const ms=document.getElementById('more-synopsis'),sy=document.getElementById('synopsis');
 carregarSinopse(f.id).then(x=>{
   if(state.view!=='film'||state.chosen!==f.id||!sy.isConnected)return;
   sy.textContent=x.o||'Sinopse ainda não disponível para este filme. As características usadas nas recomendações estão abaixo.';
   if(x.c&&x.c.length){document.getElementById('cast').textContent=x.c.slice(0,5).join(', ');document.getElementById('cast-row').hidden=false;}
   // Só mostra "Ler mais" se a sinopse realmente foi cortada.
   if(sy.scrollHeight>sy.clientHeight+2){ms.hidden=false;ms.onclick=()=>{sy.classList.add('open');ms.remove();};}
 }).catch(()=>{if(sy.isConnected)sy.textContent='A sinopse aparece quando houver internet. As características usadas nas recomendações estão abaixo.';})
 .finally(()=>{sy.classList.remove('loading');sy.removeAttribute('aria-busy');});
 APP.querySelectorAll('.rail [data-film]').forEach(el=>el.onclick=()=>openFilm(el.dataset.film,'film'));
}
// O teste de escala só é baixado quando alguém abre o laboratório (modo apresentação).
function loadBenchmark(){
 if(typeof CINE_BENCHMARK!=='undefined')return Promise.resolve();
 return new Promise((ok,fail)=>{const s=document.createElement('script');s.src='teste_escala.js?v=460';s.onload=ok;s.onerror=()=>fail(new Error('não foi possível carregar o teste de escala'));document.head.appendChild(s);});
}
function renderStress(){
 if(!BANCA){state.view='intro';return renderIntro();}
 APP.innerHTML=`<section class="page"><button class="iconbtn" id="back" aria-label="Voltar">${ICON.back}</button><h1>O CineExpert aguenta 10 mil registros?</h1><p class="lead">Gera bases sintéticas de 1.000, 5.000 e 10.000 registros e mede geração, busca, inferência e montagem de 24 cards neste aparelho. Não são filmes reais.</p><div class="actions"><button class="btn primary" id="run-stress">Executar os testes</button></div><p class="fine">A duração depende do aparelho. Cada base é descartada após a medição.</p><div id="stress-status" class="fine" role="status"></div><div id="stress-results"></div></section>`;
 document.getElementById('back').onclick=()=>goBack(()=>{state.view='intro';});
 document.getElementById('run-stress').onclick=async e=>{
   const btn=e.currentTarget,status=document.getElementById('stress-status'),box=document.getElementById('stress-results');
   btn.disabled=true;box.textContent='';status.textContent='Preparando o teste...';
   try{
     await loadBenchmark();
     const rows=[];
     for(const n of [1000,5000,10000]){
       status.textContent=`Medindo ${n.toLocaleString('pt-BR')} registros sintéticos...`;
       await new Promise(resolve=>setTimeout(resolve,40));
       rows.push(CINE_BENCHMARK.medir(n));
     }
     box.innerHTML=`<div class="benchmark-scroll"><table class="benchmark-table"><thead><tr><th>Registros</th><th>Gerar</th><th>Buscar</th><th>Inferir</th><th>24 cards</th></tr></thead><tbody>${rows.map(r=>`<tr><td>${r.n.toLocaleString('pt-BR')}</td><td>${r.geracao.toFixed(1)} ms</td><td>${r.busca.toFixed(1)} ms</td><td>${r.inferencia.toFixed(1)} ms</td><td>${r.render24.toFixed(1)} ms</td></tr>`).join('')}</tbody></table></div><p class="fine">Valores medidos neste navegador. “24 cards” mede a criação do HTML de uma página. Os testes não medem a qualidade das recomendações.</p>`;
     status.textContent='Testes concluídos. Nenhum dado fictício foi adicionado ao catálogo.';
   }catch(err){status.textContent='Erro no teste: '+err.message;}
   finally{btn.disabled=false;}
 };
}
function render(){try{if(state.view==='intro')renderIntro();else if(state.view==='quiz')renderQuiz();else if(state.view==='results')renderResults();else if(state.view==='catalog')renderCatalog();else if(state.view==='film')renderFilm();else if(state.view==='stress')renderStress();else renderHow();enhanceRails(APP);navActive();syncHistory();window.scrollTo(0,0);}catch(e){APP.innerHTML='<div class="empty"><h2>Não foi possível processar as regras</h2><p>'+esc(e.message)+'</p><button class="btn" onclick="location.reload()">Recarregar</button></div>';}}
// Tudo que depende do navegador fica aqui, para que os testes em Node possam carregar o arquivo.
function init(){
 readMode();loadSeen();
 window.addEventListener('popstate',onPopState);
 window.addEventListener('online',renderChrome);window.addEventListener('offline',renderChrome);
 if('serviceWorker' in navigator&&['https:','http:'].includes(location.protocol)&&!window.CINE_PROTOTIPO){window.addEventListener('load',()=>navigator.serviceWorker.register('./sw.js').catch(()=>{}));}
 renderChrome();render();
}
init();
