
'use strict';
// Port independente do motor Python v3.7; não acessa a internet ou a API TMDB.
const D=CINE_DATA;
const GER=[['Suspense','suspense'],['Terror','terror'],['Ficção científica','ficcao_cientifica'],['Animação','animacao'],['Drama','drama'],['Comédia','comedia'],['Ação','acao'],['Romance','romance'],['Qualquer','qualquer']];
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
const state={view:'intro',step:0,answers:{},chosen:null};
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
function questions(){
  const {genero:g,foco:f,atmosfera:a}=state.answers;
  const q=[{key:'genero',title:'Qual gênero você quer assistir?',opts:GER}];
  if(!g)return q;
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
// Modo apresentação (banca) × modo usuário.
// Ativar: ?banca=1 na URL ou botão no rodapé. Desativar: ?banca=0 ou o mesmo botão.
// No modo usuário, IDs de regras, teste de escala e textos técnicos ficam ocultos.
// ---------------------------------------------------------------------------
const MODE_KEY='cineexpert-modo-banca';
let BANCA=false;
try{
 const p=new URLSearchParams(location.search).get('banca');
 if(p==='1'){localStorage.setItem(MODE_KEY,'1');}
 else if(p==='0'){localStorage.removeItem(MODE_KEY);}
 BANCA=localStorage.getItem(MODE_KEY)==='1';
}catch(e){BANCA=new URLSearchParams(location.search).get('banca')==='1';}
function setBanca(on){
 BANCA=on;
 try{on?localStorage.setItem(MODE_KEY,'1'):localStorage.removeItem(MODE_KEY);}catch(e){}
 if(!BANCA&&state.view==='stress')state.view='intro';
 renderChrome();render();
}
const stripRuleId=s=>BANCA?s:String(s).replace(/^[RP]\d+:\s*/,'').replace(/^./,c=>c.toUpperCase());
function renderChrome(){
 document.body.classList.toggle('banca',BANCA);
 const st=document.getElementById('net-status');
 if(st){
   if(BANCA)st.textContent='◉ Pronto para apresentar';
   else st.textContent=navigator.onLine===false?'◉ Offline · tudo funciona':'◉ Funciona offline';
 }
 const left=document.getElementById('footer-info'),right=document.getElementById('footer-meta');
 if(left)left.textContent=BANCA
   ?'EDIÇÃO ACADÊMICA • MOTOR LOCAL · Dados e imagens TMDB, quando preparados; produto não endossado pelo TMDB.'
   :'Dados e imagens: TMDB · Este produto usa a API do TMDB, mas não é endossado pelo TMDB.';
 if(right)right.innerHTML=`${BANCA?`<span>${D.filmes.length} FILMES • ${D.regras.length+D.perfis.length} REGRAS (${D.regras.length} + ${D.perfis.length})</span>`:''}<button type="button" class="modetoggle" id="mode-toggle" aria-pressed="${BANCA}">${BANCA?'Modo apresentação: ligado ✓':'Modo apresentação'}</button>`;
 const t=document.getElementById('mode-toggle');if(t)t.onclick=()=>setBanca(!BANCA);
}
window.addEventListener('online',renderChrome);window.addEventListener('offline',renderChrome);

// ---------------------------------------------------------------------------
// Histórico: cada tela e cada passo do quiz vira uma entrada do histórico,
// para que o botão/gesto "voltar" do celular volte uma tela em vez de fechar o app.
// ---------------------------------------------------------------------------
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
window.addEventListener('popstate',e=>{
 const st=e.state;
 if(st&&st.cine){state.view=st.s.view;state.step=st.s.step||0;state.chosen=st.s.chosen;state.origin=st.s.origin;}
 else{state.view='intro';state.step=0;}
 restoring=true;render();
});
// Botões "Voltar" da interface usam o mesmo histórico do aparelho.
function goBack(fallback){
 const cur=history.state;
 if(cur&&cur.cine&&cur.idx>0)history.back();
 else{fallback();render();}
}
const startQuiz=(keep=false)=>{if(!keep)state.answers={};state.step=0;state.view='quiz';render();};

// Quantos filmes elegíveis existem para cada época, dadas as respostas atuais.
// A contagem depende apenas dos filtros eliminatórios (gênero, formato, reviravolta, época).
const epochCount=v=>recomendar({...state.answers,epoca:v}).total;

function renderIntro(){
 const lead=BANCA
  ?'Escolha também a época do filme e um subgênero que combine com seu momento. Um Sistema Especialista analisa suas escolhas e recomenda filmes com explicações — mesmo sem internet.'
  :'Responda algumas perguntas rápidas e receba até três filmes escolhidos para o seu momento — cada um com a explicação de por que combina com você.';
 const generos=new Set(D.filmes.map(f=>f.genero)).size;
 const stats=BANCA
  ?`<div class="stat"><strong>${D.filmes.length}</strong><span>filmes no catálogo</span></div><div class="stat"><strong>${D.regras.length}</strong><span>regras de recomendação</span></div><div class="stat"><strong>${D.perfis.length}</strong><span>regras de perfil</span></div>`
  :`<div class="stat"><strong>${D.filmes.length}</strong><span>filmes no catálogo</span></div><div class="stat"><strong>${generos}</strong><span>gêneros</span></div><div class="stat"><strong>~1 min</strong><span>para responder</span></div>`;
 APP.innerHTML=`<section class="hero"><div class="kicker">◆ Além do gênero</div><h1>O filme certo.<br><span class="accent">No seu momento.</span></h1><p class="lead">${lead}</p><div class="buttons"><button class="btn primary" id="start">✦ Descobrir meu filme →</button><button class="btn" id="catalog">Explorar catálogo</button><button class="btn" id="how">Como o sistema decide?</button>${BANCA?'<button class="btn" id="stress">Testar 10 mil filmes</button>':''}</div><div class="stats">${stats}</div></section>${BANCA
  ?'<div class="info">✓ Esta edição funciona no dispositivo: não necessita de FastAPI, computador ligado, chave TMDB ou login. Pôsteres e metadados podem ser preparados no computador, sem expor o token TMDB. Na ausência deles, as capas abstratas continuam disponíveis offline.</div>'
  :'<div class="info">✓ Sem cadastro e sem internet: suas respostas ficam só no seu aparelho.</div>'}`;
 document.getElementById('start').onclick=()=>startQuiz(false);
 document.getElementById('how').onclick=()=>{state.view='how';render();};
 document.getElementById('catalog').onclick=()=>{state.view='catalog';render();};
 if(BANCA)document.getElementById('stress').onclick=()=>{state.view='stress';render();};
}
function renderHow(){
 APP.innerHTML=`<button class="btn" id="back">← Voltar</button><section class="hero" style="padding:25px 0"><div class="kicker">Sistema Especialista</div><h1>Como o <span class="accent">CineExpert</span> decide?</h1><p class="lead">As recomendações são derivadas de regras de produção, não de popularidade.</p></section><div class="how"><div class="panel"><div class="num">01</div><h3>Coleta de fatos</h3><p>As perguntas mudam por gênero: em terror, por exemplo, não há pergunta de live-action; a atmosfera e a narrativa mudam conforme o tipo de terror ou comédia. A época, perguntada por último, mostra quantos filmes restam em cada período.</p></div><div class="panel"><div class="num">02</div><h3>Inferência de perfil</h3><p>As regras P01–P${D.perfis.length} deduzem um perfil narrativo a partir das preferências.</p></div><div class="panel"><div class="num">03</div><h3>Regras de produção</h3><p>As regras R01–R${D.regras.length} identificam filmes com etiquetas correspondentes e atribuem pesos.</p></div><div class="panel"><div class="num">04</div><h3>Explicação da escolha</h3><p>O período solicitado restringe os candidatos. “Clássico” usa curadoria editorial (não é sinônimo de antigo). Se o período tiver menos de três filmes compatíveis, a lista é completada com títulos de outras épocas, sempre sinalizados.</p></div></div><p class="note">A pontuação é heurística: não representa probabilidade de satisfação. As etiquetas dos filmes são classificações editoriais.</p><div class="buttons"><button id="start" class="btn primary">Experimentar →</button></div>`;
 document.getElementById('back').onclick=()=>goBack(()=>{state.view='intro';});
 document.getElementById('start').onclick=()=>startQuiz(false);
}
function renderQuiz(){
 const q=questions();
 // Ao restaurar um passo pelo histórico, nunca pular perguntas ainda sem resposta.
 const firstMissing=q.findIndex(x=>!state.answers[x.key]);
 if(firstMissing>=0&&state.step>firstMissing)state.step=firstMissing;
 if(state.step>=q.length){state.view='results';return renderResults();}
 const current=q[state.step];
 let opts=current.opts.map(([txt,val])=>({txt,val,count:null,disabled:false}));
 let hint='O CineExpert adapta as perguntas conforme suas escolhas.';
 if(current.key==='epoca'){
   opts=opts.map(o=>{const n=epochCount(o.val);return {...o,count:n,disabled:n===0};});
   if(opts.some(o=>o.val===state.answers.epoca&&o.disabled))delete state.answers.epoca;
   hint='Mostramos quantos filmes do catálogo combinam com suas respostas em cada época.';
 }
 const countLabel=o=>o.count===null?'':o.count===0?'<span class="count none">nenhum filme</span>':o.count<3?`<span class="count few">só ${o.count} filme${o.count>1?'s':''}</span>`:`<span class="count">${o.count} filmes</span>`;
 const last=state.step===q.length-1;
 APP.innerHTML=`<section class="question"><div class="sectiontop"><div class="kicker">Entrevista inteligente</div><div class="mini">Passo ${state.step+1}${state.answers.genero?' de '+q.length:' · escolha o gênero'}</div></div><div class="stepbar"><div style="width:${100*(state.step+1)/q.length}%"></div></div><div class="panel"><div class="mini">${hint}</div><h2>${esc(current.title)}</h2><div class="choices">${opts.map(o=>`<button class="choice" data-value="${esc(o.val)}" aria-pressed="${state.answers[current.key]===o.val}" ${o.disabled?'disabled':''}><span>${esc(o.txt)}</span>${countLabel(o)}</button>`).join('')}</div><div class="questionactions"><button class="btn" id="prev">← Voltar</button><button class="btn primary" id="next" ${state.answers[current.key]?'':'disabled'}>${last?'Ver recomendações →':'Continuar →'}</button></div></div><p class="note">Suas respostas permanecem no dispositivo e não são enviadas a um servidor.</p></section>`;
 document.querySelectorAll('.choice').forEach(btn=>btn.onclick=()=>{
   if(btn.disabled)return;
   setAnswer(current.key,btn.dataset.value);
   document.querySelectorAll('.choice').forEach(el=>el.setAttribute('aria-pressed',String(el===btn)));
   const next=document.getElementById('next');next.disabled=false;
   if(current.key==='genero'){
     const total=questions().length;
     next.textContent='Continuar →';
     document.querySelector('.sectiontop .mini').textContent=`Passo 1 de ${total}`;
     document.querySelector('.stepbar div').style.width=`${100/total}%`;
   }
 });
 document.getElementById('prev').onclick=()=>goBack(()=>{if(state.step===0)state.view='intro';else state.step--;});
 document.getElementById('next').onclick=()=>{if(!state.answers[current.key])return;state.step++;render();};
}
function movieCard(f,i,extra){
 const regras=BANCA&&f.regras_disparadas.length?`<div>${f.regras_disparadas.map(s=>`<span class="tag">${esc(s)}</span>`).join('')}</div>`:'';
 return `<article class="movie${extra?' movie-extra':''}"><div class="poster c${i%3}">${imagePoster(f)}<span>${esc(labelGenero(f.genero))} • ${f.ano}</span><strong>${esc(f.titulo)}</strong></div><div class="moviebody"><div class="rank">RECOMENDAÇÃO 0${i+1}</div>${extra?'<div class="badge-out">Fora da época escolhida</div>':''}<div class="movietitle"><h3>${esc(f.titulo)}</h3><div class="points">${f.pontos}<small>pontos</small></div></div><div class="moviemeta">${esc(labelGenero(f.genero))} • ${f.ano}</div><details class="details" ${i===0?'open':''}><summary>Por que combina com você?</summary><ul>${f.motivos.map(s=>`<li>${esc(stripRuleId(s))}</li>`).join('')}</ul>${f.nao_atende.length?`<p class="micro">Preferências não atendidas:</p><ul class="not">${f.nao_atende.map(s=>`<li>${esc(s)}</li>`).join('')}</ul>`:''}${regras}</details><button class="btn card-open" data-film="${esc(f.id)}">Ver ficha completa →</button></div></article>`;
}
function renderResults(){
 if(!state.answers.genero){state.view='intro';return renderIntro();}
 const result=recomendar(state.answers);
 const epoca=state.answers.epoca||'qualquer';
 const epocaLabel=EPO.find(x=>x[1]===epoca)?.[0]||'Tanto faz';
 const name=nice(result.f.perfil||'cinema livre');
 // Período com menos de 3 filmes compatíveis: completa com outras épocas, sinalizando.
 let extras=[];
 if(result.total<3&&epoca!=='qualquer'){
   const ids=new Set(result.lista.map(x=>x.id));
   extras=recomendar({...state.answers,epoca:'qualquer'},20).lista
     .filter(x=>!ids.has(x.id)&&!CINE_ENGINE.correspondeEpoca(byId(x.id),epoca))
     .slice(0,3-result.lista.length);
 }
 const cards=[...result.lista.map((f,i)=>movieCard(f,i,false)),...extras.map((f,j)=>movieCard(f,result.lista.length+j,true))];
 const epocaCurta=epocaLabel.split(' · ')[0].toLowerCase();
 let aviso='';
 if(result.total<3){
   if(extras.length)aviso=`<p class="note limited">${result.total===0?`Nenhum filme da época “${esc(epocaCurta)}” combina com tudo o que você pediu`:`Só ${result.total} filme${result.total>1?'s':''} da época “${esc(epocaCurta)}” combina${result.total>1?'m':''} com tudo o que você pediu`}. Completamos a lista com ${extras.length>1?'filmes':'um filme'} de outras épocas, marcado${extras.length>1?'s':''} como “Fora da época escolhida”.</p>`;
   else aviso=`<p class="note limited">${result.total===0?'Nenhum título encontrado':'Apenas '+result.total+' título(s) atendem a todos os filtros neste catálogo de '+D.filmes.length+' filmes.'} Experimente ampliar o subgênero ou responder “Tanto faz” em alguma pergunta.</p>`;
 }
 const perfilMeta=BANCA
  ?`<div class="mini">${result.tr.length?esc(result.tr.map(t=>t.regra).join(' • ')):'Nenhum perfil específico ativado'}</div><div class="mini">Época: ${esc(epocaLabel)} · ${result.total} candidatos com classificação para recomendação</div>`
  :`<div class="mini">Época: ${esc(epocaLabel)}</div>`;
 const nota=BANCA
  ?'“Clássico” é uma etiqueta de curadoria editorial, não uma categoria universal. Demonstração acadêmica offline. As pontuações são heurísticas, não probabilidades. Novas classificações preliminares exigem revisão humana. Sem necessidade de conexão à internet nem de servidor Python.'
  :'A pontuação soma, com pesos, as suas preferências que cada filme atende. As características dos filmes são classificações editoriais do CineExpert.';
 APP.innerHTML=`<div class="results"><div class="kicker">Análise concluída</div><h2>Seu próximo filme <span class="accent">está aqui.</span></h2><p class="lead">${BANCA?'Regras da base de conhecimento aplicadas às suas preferências.':'Escolhidos a partir das suas respostas.'}</p><div class="profile"><div><div class="kicker">Perfil inferido</div><strong>${esc(name)}</strong>${perfilMeta}</div><button class="btn" id="again">↺ Ajustar respostas</button></div>${aviso}${cards.length?`<div class="recommend-grid">${cards.join('')}</div>`:`<div class="panel empty"><h3>Nenhum filme encontrado com essa combinação</h3><p>Experimente responder “Tanto faz” em alguma pergunta ou escolher outro subgênero.</p></div>`}<p class="note">${nota}</p><div class="buttons"><button id="again2" class="btn primary">Nova recomendação</button><button class="btn" id="how">${BANCA?'Explicar motor especialista':'Como o sistema decide?'}</button></div></div>`;
 APP.querySelectorAll('.card-open').forEach(el=>el.onclick=()=>openFilm(el.dataset.film,'results'));
 // "Ajustar" reabre o quiz com as respostas marcadas; "Nova" recomeça do zero.
 document.getElementById('again').onclick=()=>startQuiz(true);
 document.getElementById('again2').onclick=()=>startQuiz(false);
 document.getElementById('how').onclick=()=>{state.view='how';render();};
}
function renderCatalog(){
  const genres=[['Todos os gêneros','todos'],...GER.filter(x=>x[1]!=='qualquer')];
  const PAGE=24;let pagina=0;
  APP.innerHTML=`<div class="catalog-wrap"><button class="btn" id="back">← Voltar</button><section class="catalog-head"><div class="kicker">Base de conhecimento</div><h1>Explore <span class="accent">${D.filmes.length} filmes.</span></h1><p class="lead">${BANCA?`Busque por título ou gênero. Os resultados aparecem em páginas de até ${PAGE} filmes, sem carregar todos os cards simultaneamente.`:"Busque por título ou gênero e abra a ficha completa de cada filme."}</p></section><div class="catalog-controls"><label class="sr-only" for="filter-title">Buscar filme</label><input id="filter-title" type="search" placeholder="Buscar pelo título do filme..." autocomplete="off"><label class="sr-only" for="filter-genre">Filtrar gênero</label><select id="filter-genre">${genres.map(([nome,valor])=>`<option value="${valor}">${esc(nome)}</option>`).join('')}</select></div><div class="mini" id="count-label" role="status"></div><div id="catalog-list" class="catalog-grid"></div><div class="pager"><button class="btn" id="page-prev">← Anterior</button><span id="page-label" class="mini"></span><button class="btn" id="page-next">Próxima →</button></div><p class="note">Parte dos novos filmes possui classificação preliminar; títulos marcados como pendentes podem ser explorados, mas não entram nas recomendações até receber curadoria.</p><div class="buttons"><button class="btn primary" id="quiz-from-catalog">Receber recomendações →</button></div></div>`;
  const $term=document.getElementById('filter-title'),$genre=document.getElementById('filter-genre'),$list=document.getElementById('catalog-list');
  let filtrados=[];
  function update(reset=false){
    if(reset)pagina=0;
    filtrados=CINE_ENGINE.filtrarCatalogo(D.filmes,$term.value,$genre.value);
    const totalPag=Math.max(1,Math.ceil(filtrados.length/PAGE));
    pagina=Math.min(pagina,totalPag-1);
    const slice=filtrados.slice(pagina*PAGE,(pagina+1)*PAGE);
    document.getElementById('count-label').textContent=`${filtrados.length} de ${D.filmes.length} filmes · ${slice.length} exibidos`;
    $list.innerHTML=slice.length?slice.map(f=>`<button type="button" class="catalog-item" data-film="${esc(f.id)}"><span class="mini">${esc(labelGenero(f.genero))} · ${f.ano}${f.classico_editorial?' · Curadoria: clássico':''}${f.classificacao_status==='pendente'?' · Aguardando curadoria':f.classificacao_status==='preliminar'?' · Classificação preliminar':''}</span><h3>${esc(f.titulo)}</h3><div class="catalog-tags">${f.classificacao_status==='pendente'?'<span>Aguardando classificação</span>':''}${f.tags.filter(t=>!['sem_reviravolta','reviravolta'].includes(t)).slice(0,3).map(t=>`<span>${esc(nice(t))}</span>`).join('')}</div><span class="catalog-more">Ver ficha completa →</span></button>`).join(''):'<div class="panel">Nenhum filme encontrado. Tente outro título ou gênero.</div>';
    $list.querySelectorAll('[data-film]').forEach(el=>el.onclick=()=>{state.catalogState={term:$term.value,genre:$genre.value,pagina};openFilm(el.dataset.film,'catalog');});
    document.getElementById('page-label').textContent=`Página ${pagina+1} de ${totalPag}`;
    document.getElementById('page-prev').disabled=pagina===0;
    document.getElementById('page-next').disabled=pagina>=totalPag-1;
  }
  $term.addEventListener('input',()=>update(true));$genre.addEventListener('change',()=>update(true));
  document.getElementById('page-prev').onclick=()=>{pagina--;update();};
  document.getElementById('page-next').onclick=()=>{pagina++;update();};
  if(state.catalogState){$term.value=state.catalogState.term||'';$genre.value=state.catalogState.genre||'todos';pagina=state.catalogState.pagina||0;}
  update();
  document.getElementById('back').onclick=()=>goBack(()=>{state.view='intro';});
  document.getElementById('quiz-from-catalog').onclick=()=>startQuiz(false);
}
function openFilm(id,origin='catalog'){state.chosen=id;state.origin=origin;state.view='film';render();}
function renderFilm(){
 const f=byId(state.chosen);if(!f){state.view='catalog';return renderCatalog();}
 const m=META[f.id]||{};
 const picture=posterSrc(f.id)?`<img class="film-poster" src="${esc(posterSrc(f.id))}" alt="Pôster de ${esc(f.titulo)}" onerror="this.style.display='none'">`:`<div class="film-fallback" aria-label="Pôster não disponível">Pôster não disponível offline</div>`;
 APP.innerHTML=`<div class="catalog-wrap film-page"><button class="btn" id="film-back">← Voltar</button><div class="film-hero"><div class="film-art">${picture}</div><div class="film-information"><div class="kicker">Ficha cinematográfica</div><h1>${esc(f.titulo)}</h1><p class="mini">${esc(labelGenero(f.genero))} · ${f.ano} · ${esc(f.formato==='animacao'?'Animação':'Live-action')}${m.runtime?' · '+esc(m.runtime)+' min':''}</p><p class="film-synopsis">${esc(m.overview||'Sinopse ainda não preparada para esta obra. As características editoriais estão disponíveis abaixo.')}</p>${m.director?`<p><strong>Direção:</strong> ${esc(m.director)}</p>`:''}${m.cast?.length?`<p><strong>Elenco:</strong> ${esc(m.cast.slice(0,5).join(', '))}</p>`:''}${m.vote_average?`<p><strong>TMDB:</strong> ${Number(m.vote_average).toFixed(1)}/10</p>`:''}${m.tmdb_id?`<p><a href="https://www.themoviedb.org/movie/${Number(m.tmdb_id)}" target="_blank" rel="noopener noreferrer">Ver no TMDB ↗</a></p>`:''}</div></div><div class="panel"><h2>Características utilizadas pelo CineExpert</h2><p><strong>Atmosfera:</strong> ${esc(f.atmosferas.map(nice).join(', '))}</p><p><strong>Estilo narrativo:</strong> ${esc(f.narrativas.map(nice).join(', '))}</p><p><strong>Ritmo:</strong> ${esc(nice(f.ritmo))}</p><div class="catalog-tags">${f.tags.slice(0,8).map(t=>`<span>${esc(nice(t))}</span>`).join('')}</div><p class="note">Estas características são classificações editoriais e não vêm automaticamente do TMDB. Dados cinematográficos e imagens, quando presentes, foram preparados antes da publicação.</p></div></div>`;
 document.getElementById('film-back').onclick=()=>goBack(()=>{state.view=state.origin||'catalog';});
}
function renderStress(){
  if(!BANCA){state.view='intro';return renderIntro();}
  APP.innerHTML=`<div class="catalog-wrap"><button class="btn" id="back">← Voltar</button><section class="catalog-head"><div class="kicker">Laboratório de desempenho</div><h1>O CineExpert aguenta <span class="accent">10.000 registros?</span></h1><p class="lead">Teste no seu aparelho. Gere bases <strong>sintéticas</strong> de 1.000, 5.000 e 10.000 registros e meça geração, busca, inferência e montagem de 24 cards. <strong>Não são 10 mil filmes reais.</strong></p></section><div class="panel"><button class="btn primary" id="run-stress">Executar testes neste dispositivo</button><p class="note">A duração depende da memória e do navegador do seu celular. Cada base é descartada após a medição; não entra no catálogo de recomendações.</p><div id="stress-status" class="mini" role="status"></div><div id="stress-results"></div></div></div>`;
  document.getElementById('back').onclick=()=>goBack(()=>{state.view='intro';});
  document.getElementById('run-stress').onclick=async e=>{
    const btn=e.currentTarget, status=document.getElementById('stress-status'),box=document.getElementById('stress-results');
    btn.disabled=true;box.textContent='';status.textContent='Executando os três tamanhos em sequência...';
    try {
      const rows=[];
      for(const n of [1000,5000,10000]){
        status.textContent=`Medindo ${n.toLocaleString('pt-BR')} registros sintéticos...`;
        await new Promise(resolve=>setTimeout(resolve,40));
        rows.push(CINE_BENCHMARK.medir(n));
      }
      box.innerHTML=`<div class="benchmark-scroll"><table class="benchmark-table"><thead><tr><th>Registros</th><th>Gerar</th><th>Buscar</th><th>Inferir</th><th>24 cards</th></tr></thead><tbody>${rows.map(r=>`<tr><td>${r.n.toLocaleString('pt-BR')}</td><td>${r.geracao.toFixed(1)} ms</td><td>${r.busca.toFixed(1)} ms</td><td>${r.inferencia.toFixed(1)} ms</td><td>${r.render24.toFixed(1)} ms</td></tr>`).join('')}</tbody></table></div><p class="note">Valores medidos neste navegador, sujeitos a variação. A coluna “24 cards” mede a criação de HTML para uma página, não a exibição de 10 mil cards. Os testes não medem a qualidade das recomendações.</p>`;
      status.textContent='Testes concluídos. Nenhum dado fictício foi adicionado ao catálogo.';
    } catch(err) {status.textContent='Erro no teste: '+err.message;}
    finally{btn.disabled=false;}
  };
}
function render(){try{if(state.view==='intro')renderIntro();else if(state.view==='quiz')renderQuiz();else if(state.view==='results')renderResults();else if(state.view==='catalog')renderCatalog();else if(state.view==='film')renderFilm();else if(state.view==='stress')renderStress();else renderHow();syncHistory();window.scrollTo(0,0);}catch(e){APP.innerHTML='<div class="panel"><h2>Não foi possível processar as regras</h2><p>'+esc(e.message)+'</p><button class="btn" onclick="location.reload()">Reiniciar</button></div>';}}
if('serviceWorker' in navigator&&['https:','http:'].includes(location.protocol)){window.addEventListener('load',()=>navigator.serviceWorker.register('./sw.js').catch(()=>{}));}
renderChrome();
render();
