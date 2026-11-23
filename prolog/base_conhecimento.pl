% Gerado por dev/gerar_prolog.py a partir de dados.js. Não edite à mão.
:- encoding(utf8).

% perfil(Id, Condicoes, Perfil, Justificativa).  Regras de inferência de subgênero
perfil('P01', [genero='terror', foco='psicologico'], 'terror_psicologico', 'Perfil específico identificado: terror / psicologico.').
perfil('P02', [genero='terror', foco='sobrenatural'], 'terror_sobrenatural', 'Perfil específico identificado: terror / sobrenatural.').
perfil('P03', [genero='terror', foco='folclorico'], 'folk_horror', 'Perfil específico identificado: terror / folclorico.').
perfil('P04', [genero='terror', foco='investigativo'], 'terror_investigativo', 'Perfil específico identificado: terror / investigativo.').
perfil('P05', [genero='suspense', foco='investigativo'], 'suspense_investigativo', 'Perfil específico identificado: suspense / investigativo.').
perfil('P06', [genero='suspense', foco='enigmatico'], 'suspense_enigmatico', 'Perfil específico identificado: suspense / enigmatico.').
perfil('P07', [genero='suspense', foco='psicologico'], 'suspense_psicologico', 'Perfil específico identificado: suspense / psicologico.').
perfil('P08', [genero='animacao', foco='fantasia'], 'animacao_fantasia', 'Perfil específico identificado: animacao / fantasia.').
perfil('P09', [genero='animacao', foco='aventura'], 'animacao_aventura', 'Perfil específico identificado: animacao / aventura.').
perfil('P10', [genero='animacao', foco='emocional'], 'animacao_emocional', 'Perfil específico identificado: animacao / emocional.').
perfil('P11', [genero='ficcao_cientifica', foco='filosofico'], 'ficcao_filosofica', 'Perfil específico identificado: ficcao cientifica / filosofico.').
perfil('P12', [genero='ficcao_cientifica', foco='aventura'], 'ficcao_aventura', 'Perfil específico identificado: ficcao cientifica / aventura.').
perfil('P13', [genero='ficcao_cientifica', foco='tecnologia'], 'ficcao_tecnologia', 'Perfil específico identificado: ficcao cientifica / tecnologia.').
perfil('P14', [genero='drama', foco='superacao'], 'drama_superacao', 'Perfil específico identificado: drama / superacao.').
perfil('P15', [genero='drama', foco='relacoes'], 'drama_relacoes', 'Perfil específico identificado: drama / relacoes.').
perfil('P16', [genero='drama', foco='critica_social'], 'drama_critica_social', 'Perfil específico identificado: drama / critica social.').
perfil('P17', [genero='comedia', foco='humor_leve'], 'comedia_leve', 'Perfil específico identificado: comedia / humor leve.').
perfil('P18', [genero='comedia', foco='humor_emocional'], 'comedia_emocional', 'Perfil específico identificado: comedia / humor emocional.').
perfil('P19', [genero='comedia', foco='satira_social'], 'comedia_social', 'Perfil específico identificado: comedia / satira social.').
perfil('P20', [genero='acao', foco='espionagem'], 'acao_espionagem', 'Perfil de acao: espionagem.').
perfil('P21', [genero='acao', foco='perseguicao'], 'acao_perseguicao', 'Perfil de acao: perseguicao.').
perfil('P22', [genero='acao', foco='aventura'], 'acao_aventura', 'Perfil de acao: aventura.').
perfil('P23', [genero='romance', foco='leve'], 'romance_leve', 'Perfil de romance: leve.').
perfil('P24', [genero='romance', foco='drama'], 'romance_drama', 'Perfil de romance: drama.').
perfil('P25', [genero='romance', foco='classico'], 'romance_classico', 'Perfil de romance: classico.').

% regra(Id, Condicoes, Etiqueta, Peso, Justificativa).  Regras de prioridade
regra('R01', [genero='suspense', reviravolta='sim'], 'reviravolta', 5, 'Procura suspense com reviravoltas narrativas.').
regra('R02', [genero='suspense', narrativa='investigacao'], 'investigativo', 5, 'Prefere mistérios com investigação.').
regra('R03', [genero='suspense', narrativa='misterio'], 'misterio_complexo', 5, 'Prefere enigmas e mistérios complexos.').
regra('R04', [genero='suspense', atmosfera='sombria'], 'sombrio', 4, 'Busca atmosfera sombria no suspense.').
regra('R05', [genero='suspense', ritmo='rapido'], 'ritmo_intenso', 3, 'Prefere suspense de ritmo acelerado.').
regra('R06', [genero='suspense', narrativa='psicologica'], 'psicologico', 5, 'Procura suspense de foco psicológico.').
regra('R07', [genero='terror', narrativa='psicologica'], 'terror_psicologico', 6, 'Prefere terror psicológico.').
regra('R08', [genero='terror', atmosfera='tensa'], 'tensao_alta', 4, 'Procura terror de alta tensão.').
regra('R09', [genero='terror', ritmo='lento'], 'construcao_lenta', 5, 'Prefere tensão construída gradualmente.').
regra('R10', [genero='animacao', atmosfera='fantastica'], 'fantasia', 6, 'Procura animações de fantasia.').
regra('R11', [genero='animacao', narrativa='aventura'], 'aventura', 5, 'Prefere jornadas de aventura animadas.').
regra('R12', [genero='animacao', atmosfera='leve'], 'acolhedor', 5, 'Prefere animações leves e acolhedoras.').
regra('R13', [genero='animacao', narrativa='emocional'], 'emocional', 4, 'Procura histórias animadas emocionantes.').
regra('R14', [genero='ficcao_cientifica', narrativa='filosofica'], 'filosofico', 6, 'Prefere ficção científica com questões filosóficas.').
regra('R15', [genero='ficcao_cientifica', narrativa='aventura'], 'aventura', 5, 'Busca aventura em ficção científica.').
regra('R16', [genero='ficcao_cientifica', atmosfera='reflexiva'], 'reflexivo', 5, 'Busca uma ficção científica reflexiva.').
regra('R17', [genero='drama', narrativa='emocional'], 'emocional', 5, 'Prefere dramas centrados em emoções.').
regra('R18', [genero='comedia', atmosfera='leve'], 'humor', 5, 'Busca comédia de atmosfera leve.').
regra('R19', [narrativa='critica_social'], 'critica_social', 5, 'Dá preferência a narrativas de crítica social.').
regra('R20', [reviravolta='nao'], 'sem_reviravolta', 4, 'Prefere histórias sem foco em grandes reviravoltas.').
regra('R21', [perfil='terror_psicologico'], 'terror_psicologico', 7, 'Atende ao subestilo desejado: psicologico.').
regra('R22', [perfil='terror_sobrenatural'], 'terror_sobrenatural', 7, 'Atende ao subestilo desejado: sobrenatural.').
regra('R23', [perfil='folk_horror'], 'folk_horror', 7, 'Atende ao subestilo desejado: folclorico.').
regra('R24', [perfil='terror_investigativo'], 'terror_investigativo', 7, 'Atende ao subestilo desejado: investigativo.').
regra('R25', [perfil='suspense_investigativo'], 'suspense_investigativo', 7, 'Atende ao subestilo desejado: investigativo.').
regra('R26', [perfil='suspense_enigmatico'], 'suspense_enigmatico', 7, 'Atende ao subestilo desejado: enigmatico.').
regra('R27', [perfil='suspense_psicologico'], 'suspense_psicologico', 7, 'Atende ao subestilo desejado: psicologico.').
regra('R28', [perfil='animacao_fantasia'], 'animacao_fantasia', 7, 'Atende ao subestilo desejado: fantasia.').
regra('R29', [perfil='animacao_aventura'], 'animacao_aventura', 7, 'Atende ao subestilo desejado: aventura.').
regra('R30', [perfil='animacao_emocional'], 'animacao_emocional', 7, 'Atende ao subestilo desejado: emocional.').
regra('R31', [perfil='ficcao_filosofica'], 'ficcao_filosofica', 7, 'Atende ao subestilo desejado: filosofico.').
regra('R32', [perfil='ficcao_aventura'], 'ficcao_aventura', 7, 'Atende ao subestilo desejado: aventura.').
regra('R33', [perfil='ficcao_tecnologia'], 'ficcao_tecnologia', 7, 'Atende ao subestilo desejado: tecnologia.').
regra('R34', [perfil='drama_superacao'], 'drama_superacao', 7, 'Atende ao subestilo desejado: superacao.').
regra('R35', [perfil='drama_relacoes'], 'drama_relacoes', 7, 'Atende ao subestilo desejado: relacoes.').
regra('R36', [perfil='drama_critica_social'], 'drama_critica_social', 7, 'Atende ao subestilo desejado: critica social.').
regra('R37', [perfil='comedia_leve'], 'comedia_leve', 7, 'Atende ao subestilo desejado: humor leve.').
regra('R38', [perfil='comedia_emocional'], 'comedia_emocional', 7, 'Atende ao subestilo desejado: humor emocional.').
regra('R39', [perfil='comedia_social'], 'comedia_social', 7, 'Atende ao subestilo desejado: satira social.').
regra('R40', [perfil='acao_espionagem'], 'acao_espionagem', 7, 'Prioriza o subestilo espionagem em acao.').
regra('R41', [perfil='acao_perseguicao'], 'acao_perseguicao', 7, 'Prioriza o subestilo perseguicao em acao.').
regra('R42', [perfil='acao_aventura'], 'acao_aventura', 7, 'Prioriza o subestilo aventura em acao.').
regra('R43', [perfil='romance_leve'], 'romance_leve', 7, 'Prioriza o subestilo leve em romance.').
regra('R44', [perfil='romance_drama'], 'romance_drama', 7, 'Prioriza o subestilo drama em romance.').
regra('R45', [perfil='romance_classico'], 'romance_classico', 7, 'Prioriza o subestilo classico em romance.').

% filme(Id, Titulo, Ano, Genero, Formato, Atmosferas, Narrativas, Ritmo, Reviravolta, Etiquetas).
filme('um-contratempo', 'Um Contratempo', 2016, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'ritmo_intenso', 'tensao_alta', 'suspense_investigativo', 'suspense_enigmatico']).
filme('caddo-lake', 'Os Horrores de Caddo Lake', 2024, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'reflexivo', 'suspense_enigmatico', 'suspense_investigativo']).
filme('entre-facas', 'Entre Facas e Segredos', 2019, 'suspense', 'live_action', ['leve', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'humor', 'suspense_investigativo']).
filme('garota-exemplar', 'Garota Exemplar', 2014, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'tensao_alta', 'suspense_psicologico']).
filme('corra', 'Corra!', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'rapido', sim, ['reviravolta', 'terror_psicologico', 'tensao_alta', 'sombrio', 'critica_social', 'ritmo_intenso']).
filme('hereditario', 'Hereditário', 2018, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'lento', nao, ['sem_reviravolta', 'terror_psicologico', 'tensao_alta', 'sombrio', 'construcao_lenta', 'terror_sobrenatural']).
filme('a-bruxa', 'A Bruxa', 2015, 'terror', 'live_action', ['sombria', 'reflexiva'], ['psicologica'], 'lento', nao, ['sem_reviravolta', 'terror_psicologico', 'sombrio', 'construcao_lenta', 'reflexivo', 'folk_horror']).
filme('chihiro', 'A Viagem de Chihiro', 2001, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'fantasia', 'aventura', 'emocional', 'animacao_fantasia', 'animacao_aventura']).
filme('totoro', 'Meu Amigo Totoro', 1988, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'lento', nao, ['sem_reviravolta', 'fantasia', 'aventura', 'acolhedor', 'construcao_lenta', 'emocional', 'animacao_fantasia', 'animacao_aventura']).
filme('divertida-mente', 'Divertida Mente', 2015, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'emocional', 'acolhedor', 'humor', 'animacao_emocional']).
filme('wall-e', 'WALL-E', 2008, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['aventura', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'aventura', 'reflexivo', 'critica_social', 'emocional', 'animacao_aventura', 'animacao_emocional']).
filme('a-chegada', 'A Chegada', 2016, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'misterio'], 'lento', sim, ['reviravolta', 'filosofico', 'misterio_complexo', 'reflexivo', 'emocional', 'construcao_lenta', 'ficcao_filosofica']).
filme('ex-machina', 'Ex Machina', 2014, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['filosofica', 'psicologica'], 'moderado', sim, ['reviravolta', 'filosofico', 'reflexivo', 'psicologico', 'tensao_alta', 'ficcao_filosofica', 'ficcao_tecnologia']).
filme('interestelar', 'Interestelar', 2014, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['aventura', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'filosofico', 'reflexivo', 'aventura', 'emocional', 'ficcao_filosofica', 'ficcao_aventura']).
filme('pequena-miss', 'Pequena Miss Sunshine', 2006, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'humor', 'emocional', 'critica_social', 'comedia_emocional', 'comedia_leve']).
filme('a-procura', 'À Procura da Felicidade', 2006, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'emocional', 'reflexivo', 'drama_superacao', 'drama_relacoes']).
filme('ilha-do-medo', 'Ilha do Medo', 2010, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico', 'suspense_enigmatico']).
filme('prisioneiros', 'Os Suspeitos', 2013, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['sem_reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('o-babadook', 'O Babadook', 2014, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'lento', nao, ['sem_reviravolta', 'terror_psicologico', 'terror_sobrenatural', 'construcao_lenta']).
filme('midsommar', 'Midsommar', 2019, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'lento', nao, ['sem_reviravolta', 'folk_horror', 'terror_psicologico', 'construcao_lenta']).
filme('invocacao-do-mal', 'Invocação do Mal', 2013, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['sem_reviravolta', 'terror_sobrenatural', 'terror_investigativo', 'tensao_alta']).
filme('o-ritual', 'O Ritual', 2017, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'folk_horror', 'terror_sobrenatural']).
filme('soul', 'Soul', 2020, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['filosofica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'animacao_emocional', 'emocional', 'reflexivo']).
filme('matrix', 'Matrix', 1999, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['filosofica', 'aventura'], 'rapido', sim, ['reviravolta', 'ficcao_tecnologia', 'ficcao_filosofica', 'ficcao_aventura', 'filosofico']).
filme('o-menino-vento', 'O Menino que Descobriu o Vento', 2019, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'drama_superacao', 'emocional']).
filme('que-horas-ela-volta', 'Que Horas Ela Volta?', 2015, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'drama_critica_social', 'critica_social', 'drama_relacoes']).
filme('escola-de-rock', 'Escola de Rock', 2003, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'comedia_leve', 'comedia_emocional', 'humor', 'emocional']).
filme('auto-da-compadecida', 'O Auto da Compadecida', 2000, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'comedia_leve', 'comedia_social', 'humor', 'critica_social']).
filme('zodiac', 'Zodíaco', 2007, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'lento', nao, ['sem_reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo', 'suspense_enigmatico', 'construcao_lenta']).
filme('sexto-sentido', 'O Sexto Sentido', 1999, 'suspense', 'live_action', ['sombria', 'emocional'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'psicologico', 'misterio_complexo', 'suspense_psicologico', 'suspense_enigmatico']).
filme('seven', 'Seven: Os Sete Crimes Capitais', 1995, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'tensao_alta', 'suspense_investigativo']).
filme('grande-truque', 'O Grande Truque', 2006, 'suspense', 'live_action', ['sombria', 'tensa'], ['misterio', 'psicologica'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_enigmatico']).
filme('entidade', 'A Entidade', 2012, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['sem_reviravolta', 'terror_sobrenatural', 'terror_investigativo', 'tensao_alta', 'sombrio']).
filme('orfanato', 'O Orfanato', 2007, 'terror', 'live_action', ['sombria', 'emocional'], ['misterio', 'psicologica'], 'moderado', sim, ['reviravolta', 'terror_sobrenatural', 'terror_psicologico', 'sombrio']).
filme('lugar-silencioso', 'Um Lugar Silencioso', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'tensao_alta', 'ritmo_intenso', 'terror_sobrenatural', 'emocional']).
filme('nos', 'Nós', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', sim, ['reviravolta', 'terror_psicologico', 'critica_social', 'tensao_alta']).
filme('blade-runner-2049', 'Blade Runner 2049', 2017, 'ficcao_cientifica', 'live_action', ['reflexiva', 'sombria'], ['filosofica', 'misterio'], 'lento', nao, ['sem_reviravolta', 'ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'reflexivo', 'construcao_lenta']).
filme('truman-show', 'O Show de Truman', 1998, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'critica_social'], 'moderado', sim, ['reviravolta', 'ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'critica_social']).
filme('duna-2021', 'Duna', 2021, 'ficcao_cientifica', 'live_action', ['sombria', 'tensa'], ['aventura', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'ficcao_aventura', 'ficcao_filosofica', 'aventura', 'filosofico']).
filme('gravidade', 'Gravidade', 2013, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'ficcao_aventura', 'aventura', 'emocional', 'ritmo_intenso']).
filme('mononoke', 'Princesa Mononoke', 1997, 'animacao', 'animacao', ['fantastica', 'tensa'], ['aventura', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'animacao_fantasia', 'animacao_aventura', 'fantasia', 'aventura', 'critica_social']).
filme('coco', 'Viva – A Vida é uma Festa', 2017, 'animacao', 'animacao', ['emocional', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'animacao_emocional', 'animacao_aventura', 'fantasia', 'emocional', 'aventura']).
filme('castelo-animado', 'O Castelo Animado', 2004, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'animacao_fantasia', 'animacao_aventura', 'fantasia', 'aventura', 'emocional']).
filme('aranhaverso', 'Homem-Aranha no Aranhaverso', 2018, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'animacao_aventura', 'animacao_emocional', 'aventura', 'emocional', 'ritmo_intenso']).
filme('poetas-mortos', 'Sociedade dos Poetas Mortos', 1989, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'drama_relacoes', 'drama_superacao', 'emocional', 'critica_social', 'reflexivo']).
filme('extraordinario', 'Extraordinário', 2017, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'drama_relacoes', 'drama_superacao', 'emocional', 'acolhedor']).
filme('vida-bela', 'A Vida é Bela', 1997, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'drama_relacoes', 'drama_critica_social', 'emocional', 'critica_social', 'reflexivo']).
filme('central-brasil', 'Central do Brasil', 1998, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['sem_reviravolta', 'drama_relacoes', 'drama_critica_social', 'emocional', 'critica_social']).
filme('diabo-prada', 'O Diabo Veste Prada', 2006, 'comedia', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'comedia_leve', 'comedia_social', 'comedia_emocional', 'humor', 'critica_social']).
filme('walter-mitty', 'A Vida Secreta de Walter Mitty', 2013, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'comedia_leve', 'comedia_emocional', 'humor', 'emocional', 'aventura']).
filme('branquelas', 'As Branquelas', 2004, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'comedia_leve', 'humor', 'ritmo_intenso']).
filme('noite-museu', 'Uma Noite no Museu', 2006, 'comedia', 'live_action', ['leve', 'fantastica'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'comedia_leve', 'humor', 'aventura', 'ritmo_intenso']).
filme('janela-indiscreta', 'Janela Indiscreta', 1954, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'misterio'], 'moderado', nao, ['investigativo', 'misterio_complexo', 'reflexivo', 'sem_reviravolta', 'suspense_enigmatico', 'suspense_investigativo', 'tensao_alta']).
filme('segredo-olhos', 'O Segredo dos Seus Olhos', 2009, 'suspense', 'live_action', ['sombria', 'emocional'], ['investigacao', 'misterio'], 'moderado', sim, ['emocional', 'investigativo', 'misterio_complexo', 'reviravolta', 'sombrio', 'suspense_enigmatico', 'suspense_investigativo']).
filme('homem-duplicado', 'O Homem Duplicado', 2013, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'misterio'], 'lento', sim, ['construcao_lenta', 'misterio_complexo', 'psicologico', 'reflexivo', 'reviravolta', 'sombrio', 'suspense_enigmatico', 'suspense_psicologico']).
filme('fragmentado', 'Fragmentado', 2016, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'rapido', sim, ['misterio_complexo', 'psicologico', 'reviravolta', 'ritmo_intenso', 'sombrio', 'suspense_psicologico', 'tensao_alta']).
filme('o-presente-2015', 'O Presente', 2015, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['misterio_complexo', 'psicologico', 'reviravolta', 'sombrio', 'suspense_psicologico', 'tensao_alta']).
filme('garota-no-trem', 'A Garota no Trem', 2016, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['investigativo', 'misterio_complexo', 'reviravolta', 'sombrio', 'suspense_enigmatico', 'suspense_investigativo', 'tensao_alta']).
filme('o-abutre', 'O Abutre', 2014, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'rapido', nao, ['critica_social', 'psicologico', 'reflexivo', 'ritmo_intenso', 'sem_reviravolta', 'sombrio', 'suspense_psicologico']).
filme('anatomia-queda', 'Anatomia de uma Queda', 2023, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'misterio'], 'lento', nao, ['construcao_lenta', 'investigativo', 'misterio_complexo', 'reflexivo', 'sem_reviravolta', 'suspense_investigativo', 'tensao_alta']).
filme('o-iluminado', 'O Iluminado', 1980, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'lento', nao, ['construcao_lenta', 'psicologico', 'sem_reviravolta', 'sombrio', 'tensao_alta', 'terror_psicologico']).
filme('o-chamado', 'O Chamado', 2002, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio', 'investigacao'], 'moderado', nao, ['investigativo', 'sem_reviravolta', 'sombrio', 'tensao_alta', 'terror_investigativo', 'terror_sobrenatural']).
filme('atividade-paranormal', 'Atividade Paranormal', 2007, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'lento', nao, ['construcao_lenta', 'sem_reviravolta', 'sombrio', 'tensao_alta', 'terror_sobrenatural']).
filme('a-visita', 'A Visita', 2015, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio', 'psicologica'], 'moderado', sim, ['psicologico', 'reviravolta', 'sombrio', 'tensao_alta', 'terror_psicologico']).
filme('os-outros', 'Os Outros', 2001, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio', 'psicologica'], 'lento', sim, ['construcao_lenta', 'psicologico', 'reviravolta', 'sombrio', 'tensao_alta', 'terror_sobrenatural']).
filme('fale-comigo', 'Fale Comigo', 2022, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'rapido', nao, ['psicologico', 'ritmo_intenso', 'sem_reviravolta', 'sombrio', 'tensao_alta', 'terror_psicologico', 'terror_sobrenatural']).
filme('homem-invisivel', 'O Homem Invisível', 2020, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'rapido', nao, ['psicologico', 'ritmo_intenso', 'sem_reviravolta', 'sombrio', 'tensao_alta', 'terror_psicologico']).
filme('o-farol', 'O Farol', 2019, 'terror', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'misterio'], 'lento', nao, ['construcao_lenta', 'psicologico', 'reflexivo', 'sem_reviravolta', 'sombrio', 'terror_psicologico']).
filme('toy-story', 'Toy Story', 1995, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['acolhedor', 'animacao_aventura', 'animacao_emocional', 'aventura', 'emocional', 'ritmo_intenso', 'sem_reviravolta']).
filme('toy-story-3', 'Toy Story 3', 2010, 'animacao', 'animacao', ['emocional', 'tensa'], ['aventura', 'emocional'], 'moderado', nao, ['animacao_aventura', 'animacao_emocional', 'aventura', 'emocional', 'sem_reviravolta', 'tensao_alta']).
filme('up', 'Up: Altas Aventuras', 2009, 'animacao', 'animacao', ['emocional', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['animacao_aventura', 'animacao_emocional', 'animacao_fantasia', 'aventura', 'emocional', 'fantasia', 'sem_reviravolta']).
filme('encanto', 'Encanto', 2021, 'animacao', 'animacao', ['fantastica', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['animacao_aventura', 'animacao_emocional', 'animacao_fantasia', 'aventura', 'emocional', 'fantasia', 'sem_reviravolta']).
filme('luca', 'Luca', 2021, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['acolhedor', 'animacao_aventura', 'animacao_fantasia', 'aventura', 'fantasia', 'sem_reviravolta']).
filme('menino-garca', 'O Menino e a Garça', 2023, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['filosofica', 'aventura'], 'lento', nao, ['animacao_aventura', 'animacao_fantasia', 'aventura', 'construcao_lenta', 'fantasia', 'filosofico', 'reflexivo', 'sem_reviravolta']).
filme('kiki', 'O Serviço de Entregas da Kiki', 1989, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['acolhedor', 'animacao_aventura', 'animacao_fantasia', 'aventura', 'fantasia', 'sem_reviravolta']).
filme('klaus', 'Klaus', 2019, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['acolhedor', 'animacao_aventura', 'animacao_emocional', 'aventura', 'emocional', 'sem_reviravolta']).
filme('contato', 'Contato', 1997, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'misterio'], 'lento', nao, ['construcao_lenta', 'emocional', 'ficcao_filosofica', 'filosofico', 'reflexivo', 'sem_reviravolta']).
filme('perdido-marte', 'Perdido em Marte', 2015, 'ficcao_cientifica', 'live_action', ['leve', 'reflexiva'], ['aventura', 'emocional'], 'rapido', nao, ['aventura', 'ficcao_aventura', 'ficcao_tecnologia', 'reflexivo', 'ritmo_intenso', 'sem_reviravolta']).
filme('origem', 'A Origem', 2010, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['filosofica', 'misterio'], 'rapido', sim, ['ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'reflexivo', 'reviravolta', 'ritmo_intenso', 'tensao_alta']).
filme('planeta-macacos-origem', 'Planeta dos Macacos: A Origem', 2011, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura', 'critica_social'], 'moderado', nao, ['aventura', 'critica_social', 'emocional', 'ficcao_aventura', 'ficcao_tecnologia', 'sem_reviravolta', 'tensao_alta']).
filme('jogador-numero-1', 'Jogador Nº 1', 2018, 'ficcao_cientifica', 'live_action', ['leve', 'fantastica'], ['aventura', 'critica_social'], 'rapido', nao, ['aventura', 'critica_social', 'ficcao_aventura', 'ficcao_tecnologia', 'ritmo_intenso', 'sem_reviravolta']).
filme('predestinado', 'O Predestinado', 2014, 'ficcao_cientifica', 'live_action', ['sombria', 'reflexiva'], ['filosofica', 'misterio'], 'moderado', sim, ['ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'reflexivo', 'reviravolta', 'sombrio']).
filme('gattaca', 'Gattaca: Experiência Genética', 1997, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica', 'critica_social'], 'lento', nao, ['construcao_lenta', 'critica_social', 'ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'reflexivo', 'sem_reviravolta', 'tensao_alta']).
filme('minority-report', 'Minority Report: A Nova Lei', 2002, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'filosofica'], 'rapido', sim, ['ficcao_filosofica', 'ficcao_tecnologia', 'filosofico', 'investigativo', 'reflexivo', 'reviravolta', 'ritmo_intenso', 'tensao_alta']).
filme('historias-cruzadas', 'Histórias Cruzadas', 2011, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'drama_critica_social', 'drama_relacoes', 'emocional', 'reflexivo', 'sem_reviravolta']).
filme('intocaveis', 'Intocáveis', 2011, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['drama_relacoes', 'drama_superacao', 'emocional', 'sem_reviravolta']).
filme('sempre-seu-lado', 'Sempre ao Seu Lado', 2009, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'lento', nao, ['construcao_lenta', 'drama_relacoes', 'emocional', 'reflexivo', 'sem_reviravolta']).
filme('estrelas-tempo', 'Estrelas Além do Tempo', 2016, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'drama_critica_social', 'drama_superacao', 'emocional', 'reflexivo', 'sem_reviravolta']).
filme('lion', 'Lion: Uma Jornada para Casa', 2016, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'drama_relacoes', 'drama_superacao', 'emocional', 'reflexivo', 'sem_reviravolta']).
filme('billy-elliot', 'Billy Elliot', 2000, 'drama', 'live_action', ['emocional', 'leve'], ['emocional', 'critica_social'], 'moderado', nao, ['critica_social', 'drama_relacoes', 'drama_superacao', 'emocional', 'sem_reviravolta']).
filme('o-terminal', 'O Terminal', 2004, 'drama', 'live_action', ['leve', 'emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['critica_social', 'drama_relacoes', 'drama_superacao', 'emocional', 'sem_reviravolta']).
filme('oleo-lorenzo', 'O Óleo de Lorenzo', 1992, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['drama_relacoes', 'drama_superacao', 'emocional', 'reflexivo', 'sem_reviravolta']).
filme('hotel-budapeste', 'O Grande Hotel Budapeste', 2014, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social', 'aventura'], 'rapido', nao, ['aventura', 'comedia_leve', 'comedia_social', 'critica_social', 'humor', 'reflexivo', 'ritmo_intenso', 'sem_reviravolta']).
filme('curtindo-vida', 'Curtindo a Vida Adoidado', 1986, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['aventura', 'comedia_emocional', 'comedia_leve', 'emocional', 'humor', 'ritmo_intenso', 'sem_reviravolta']).
filme('barbie', 'Barbie', 2023, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social', 'aventura'], 'moderado', nao, ['aventura', 'comedia_leve', 'comedia_social', 'critica_social', 'humor', 'reflexivo', 'sem_reviravolta']).
filme('legalmente-loira', 'Legalmente Loira', 2001, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional', 'critica_social'], 'rapido', nao, ['comedia_emocional', 'comedia_leve', 'critica_social', 'emocional', 'humor', 'ritmo_intenso', 'sem_reviravolta']).
filme('senhor-estagiario', 'Um Senhor Estagiário', 2015, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['comedia_emocional', 'comedia_leve', 'emocional', 'humor', 'sem_reviravolta']).
filme('chef', 'Chef', 2014, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'comedia_emocional', 'comedia_leve', 'emocional', 'humor', 'sem_reviravolta']).
filme('mentiroso', 'O Mentiroso', 1997, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['comedia_emocional', 'comedia_leve', 'emocional', 'humor', 'ritmo_intenso', 'sem_reviravolta']).
filme('de-repente-30', 'De Repente 30', 2004, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['comedia_emocional', 'comedia_leve', 'emocional', 'humor', 'sem_reviravolta']).
filme('missao-impossivel', 'Missão: Impossível', 1996, 'acao', 'live_action', ['tensa'], ['investigacao'], 'rapido', nao, ['acao_espionagem', 'espionagem', 'tensa']).
filme('missao-impossivel-efeito-fallout', 'Missão: Impossível - Efeito Fallout', 2018, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_espionagem', 'espionagem', 'tensa']).
filme('007-operacao-skyfall', '007 - Operação Skyfall', 2012, 'acao', 'live_action', ['sombria'], ['investigacao'], 'rapido', nao, ['acao_espionagem', 'espionagem', 'sombria']).
filme('a-identidade-bourne', 'A Identidade Bourne', 2002, 'acao', 'live_action', ['tensa'], ['investigacao'], 'rapido', nao, ['acao_espionagem', 'espionagem', 'tensa']).
filme('mad-max-estrada-da-furia', 'Mad Max: Estrada da Fúria', 2015, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'perseguicao', 'tensa']).
filme('john-wick-de-volta-ao-jogo', 'John Wick: De Volta ao Jogo', 2014, 'acao', 'live_action', ['sombria'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'perseguicao', 'sombria']).
filme('velozes-e-furiosos-5-operacao-rio', 'Velozes e Furiosos 5: Operação Rio', 2011, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'perseguicao', 'leve']).
filme('em-ritmo-de-fuga', 'Em Ritmo de Fuga', 2017, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'perseguicao', 'leve']).
filme('indiana-jones-e-os-cacadores-da-arca-perdida', 'Indiana Jones e os Caçadores da Arca Perdida', 1981, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['acao_aventura', 'aventura', 'leve']).
filme('top-gun-maverick', 'Top Gun: Maverick', 2022, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['acao_aventura', 'aventura', 'emocional']).
filme('pantera-negra', 'Pantera Negra', 2018, 'acao', 'live_action', ['reflexiva'], ['critica_social'], 'rapido', nao, ['acao_aventura', 'aventura', 'reflexiva']).
filme('a-mulher-rei', 'A Mulher Rei', 2022, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['acao_aventura', 'aventura', 'emocional']).
filme('orgulho-e-preconceito', 'Orgulho e Preconceito', 2005, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_classico', 'classico', 'emocional']).
filme('antes-do-amanhecer', 'Antes do Amanhecer', 1995, 'romance', 'live_action', ['reflexiva'], ['romantica'], 'lento', nao, ['romance_classico', 'classico', 'reflexiva']).
filme('diario-de-uma-paixao', 'Diário de uma Paixão', 2004, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_classico', 'classico', 'emocional']).
filme('titanic', 'Titanic', 1997, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_classico', 'classico', 'emocional']).
filme('questao-de-tempo', 'Questão de Tempo', 2013, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['romance_leve', 'leve', 'leve']).
filme('simplesmente-amor', 'Simplesmente Amor', 2003, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['romance_leve', 'leve', 'leve']).
filme('para-todos-os-garotos-que-ja-amei', 'Para Todos os Garotos que Já Amei', 2018, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['romance_leve', 'leve', 'leve']).
filme('o-amor-nao-tira-ferias', 'O Amor Não Tira Férias', 2006, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_leve', 'leve', 'emocional']).
filme('la-la-land-cantando-estacoes', 'La La Land: Cantando Estações', 2016, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_drama', 'drama', 'emocional']).
filme('vidas-passadas', 'Vidas Passadas', 2023, 'romance', 'live_action', ['reflexiva'], ['romantica'], 'lento', nao, ['romance_drama', 'drama', 'reflexiva']).
filme('como-eu-era-antes-de-voce', 'Como Eu Era Antes de Você', 2016, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_drama', 'drama', 'emocional']).
filme('nasce-uma-estrela', 'Nasce Uma Estrela', 2018, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_drama', 'drama', 'emocional']).
filme('busca-implacavel', 'Busca Implacável', 2008, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', nao, ['investigativo', 'suspense_investigativo']).
filme('o-homem-nas-trevas', 'O Homem nas Trevas', 2016, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', sim, ['suspense_enigmatico', 'tensao_alta']).
filme('o-quarto-de-jack', 'O Quarto de Jack', 2015, 'suspense', 'live_action', ['emocional'], ['psicologica'], 'moderado', nao, ['psicologico', 'reflexivo']).
filme('a-caca', 'A Caça', 2012, 'suspense', 'live_action', ['sombria'], ['psicologica'], 'moderado', nao, ['psicologico', 'reflexivo']).
filme('os-infiltrados', 'Os Infiltrados', 2006, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['investigativo', 'suspense_investigativo', 'reviravolta']).
filme('o-silencio-dos-inocentes', 'O Silêncio dos Inocentes', 1991, 'suspense', 'live_action', ['sombria'], ['investigacao'], 'moderado', sim, ['investigativo', 'psicologico', 'suspense_investigativo']).
filme('o-exorcista', 'O Exorcista', 1973, 'terror', 'live_action', ['sombria'], ['psicologica'], 'moderado', nao, ['terror_sobrenatural', 'tensao_alta']).
filme('a-hora-do-pesadelo', 'A Hora do Pesadelo', 1984, 'terror', 'live_action', ['sombria'], ['misterio'], 'rapido', nao, ['terror_sobrenatural', 'tensao_alta']).
filme('panico', 'Pânico', 1996, 'terror', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['terror_investigativo', 'investigativo', 'reviravolta']).
filme('o-enigma-de-outro-mundo', 'O Enigma de Outro Mundo', 1982, 'terror', 'live_action', ['sombria'], ['misterio'], 'moderado', sim, ['terror_criaturas', 'tensao_alta']).
filme('a-morte-do-demonio', 'A Morte do Demônio', 1981, 'terror', 'live_action', ['sombria'], ['aventura'], 'rapido', nao, ['terror_sobrenatural', 'tensao_alta']).
filme('a-corrente-do-mal', 'A Corrente do Mal', 2014, 'terror', 'live_action', ['sombria'], ['misterio'], 'moderado', nao, ['terror_sobrenatural', 'tensao_alta']).
filme('shrek', 'Shrek', 2001, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['fantasia', 'humor', 'aventura']).
filme('procurando-nemo', 'Procurando Nemo', 2003, 'animacao', 'animacao', ['emocional'], ['aventura'], 'moderado', nao, ['aventura', 'emocional']).
filme('ratatouille', 'Ratatouille', 2007, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'emocional']).
filme('o-gigante-de-ferro', 'O Gigante de Ferro', 1999, 'animacao', 'animacao', ['emocional'], ['aventura'], 'moderado', nao, ['emocional', 'aventura']).
filme('coraline-e-o-mundo-secreto', 'Coraline e o Mundo Secreto', 2009, 'animacao', 'animacao', ['sombria'], ['aventura'], 'moderado', sim, ['fantasia', 'misterio_complexo']).
filme('o-fantastico-sr-raposo', 'O Fantástico Sr. Raposo', 2009, 'animacao', 'animacao', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'aventura']).
filme('2001-uma-odisseia-no-espaco', '2001: Uma Odisseia no Espaço', 1968, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica'], 'lento', nao, ['ficcao_filosofica', 'reflexivo']).
filme('blade-runner-o-cacador-de-androides', 'Blade Runner: O Caçador de Androides', 1982, 'ficcao_cientifica', 'live_action', ['sombria'], ['filosofica'], 'lento', nao, ['ficcao_filosofica', 'ficcao_tecnologia']).
filme('elysium', 'Elysium', 2013, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['ficcao_tecnologia', 'ficcao_aventura']).
filme('distrito-9', 'Distrito 9', 2009, 'ficcao_cientifica', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['ficcao_tecnologia', 'ficcao_aventura']).
filme('ela', 'Ela', 2013, 'ficcao_cientifica', 'live_action', ['emocional'], ['filosofica'], 'moderado', nao, ['ficcao_filosofica', 'ficcao_tecnologia']).
filme('o-exterminador-do-futuro-2-o-julgamento-final', 'O Exterminador do Futuro 2: O Julgamento Final', 1991, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['ficcao_aventura', 'ficcao_tecnologia']).
filme('um-sonho-de-liberdade', 'Um Sonho de Liberdade', 1994, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['drama_superacao', 'emocional']).
filme('forrest-gump-o-contador-de-historias', 'Forrest Gump: O Contador de Histórias', 1994, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['drama_superacao', 'emocional']).
filme('o-pianista', 'O Pianista', 2002, 'drama', 'live_action', ['sombria'], ['emocional'], 'lento', nao, ['drama_superacao', 'emocional']).
filme('moonlight-sob-a-luz-do-luar', 'Moonlight: Sob a Luz do Luar', 2016, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'lento', nao, ['drama_relacoes', 'emocional']).
filme('as-vantagens-de-ser-invisivel', 'As Vantagens de Ser Invisível', 2012, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['drama_relacoes', 'emocional']).
filme('a-baleia', 'A Baleia', 2022, 'drama', 'live_action', ['emocional'], ['psicologica'], 'lento', nao, ['drama_relacoes', 'emocional']).
filme('apertem-os-cintos-o-piloto-sumiu', 'Apertem os Cintos... O Piloto Sumiu!', 1980, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor_leve', 'humor']).
filme('meninas-malvadas', 'Meninas Malvadas', 2004, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['comedia_social', 'humor']).
filme('se-beber-nao-case', 'Se Beber, Não Case!', 2009, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor_leve', 'humor']).
filme('paddington-2', 'Paddington 2', 2017, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor_emocional', 'emocional']).
filme('o-ancora-a-lenda-de-ron-burgundy', 'O Âncora: A Lenda de Ron Burgundy', 2004, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['comedia_social', 'humor']).
filme('palm-springs', 'Palm Springs', 2020, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', sim, ['humor_emocional', 'humor']).
filme('duro-de-matar', 'Duro de Matar', 1988, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'ritmo_intenso']).
filme('o-protetor', 'O Protetor', 2014, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'ritmo_intenso']).
filme('resgate', 'Resgate', 2020, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'ritmo_intenso']).
filme('gladiador', 'Gladiador', 2000, 'acao', 'live_action', ['emocional'], ['aventura'], 'moderado', nao, ['acao_aventura', 'emocional']).
filme('operacao-invasao', 'Operação Invasão', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['acao_perseguicao', 'ritmo_intenso']).
filme('kingsman-servico-secreto', 'Kingsman: Serviço Secreto', 2014, 'acao', 'live_action', ['leve'], ['investigacao'], 'rapido', sim, ['acao_espionagem', 'investigativo']).
filme('amor-a-flor-da-pele', 'Amor à Flor da Pele', 2000, 'romance', 'live_action', ['reflexiva'], ['romantica'], 'lento', nao, ['romance_dramatico', 'emocional']).
filme('antes-do-por-do-sol', 'Antes do Pôr do Sol', 2004, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_leve', 'emocional']).
filme('razao-e-sensibilidade', 'Razão e Sensibilidade', 1995, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['romance_classico', 'emocional']).
filme('10-coisas-que-eu-odeio-em-voce', '10 Coisas que Eu Odeio em Você', 1999, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['romance_leve', 'humor']).
filme('um-lugar-chamado-notting-hill', 'Um Lugar Chamado Notting Hill', 1999, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['romance_leve', 'humor']).
filme('retrato-de-uma-jovem-em-chamas', 'Retrato de uma Jovem em Chamas', 2019, 'romance', 'live_action', ['reflexiva'], ['romantica'], 'lento', nao, ['romance_dramatico', 'emocional']).
filme('o-plano-perfeito', 'O Plano Perfeito', 2006, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('o-operario', 'O Operário', 2004, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('o-talentoso-ripley', 'O Talentoso Ripley', 1999, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('a-conversacao', 'A Conversação', 1974, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['misterio', 'psicologica'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_enigmatico']).
filme('halloween-a-noite-do-terror', 'Halloween: A Noite do Terror', 1978, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('o-massacre-da-serra-eletrica', 'O Massacre da Serra Elétrica', 1974, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('a-profecia', 'A Profecia', 1976, 'terror', 'live_action', ['tensa'], ['psicologica', 'investigacao'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-mosca', 'A Mosca', 1986, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('os-incriveis', 'Os Incríveis', 2004, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('frozen-uma-aventura-congelante', 'Frozen: Uma Aventura Congelante', 2013, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-rei-leao', 'O Rei Leão', 1994, 'animacao', 'animacao', ['emocional', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('nimona', 'Nimona', 2023, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'critica_social'], 'rapido', sim, ['fantasia', 'aventura', 'emocional', 'critica_social', 'animacao_fantasia']).
filme('filhos-da-esperanca', 'Filhos da Esperança', 2006, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica', 'misterio'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('solaris', 'Solaris', 1972, 'ficcao_cientifica', 'live_action', ['reflexiva', 'fantastica'], ['misterio', 'filosofica'], 'lento', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_aventura']).
filme('o-quinto-elemento', 'O Quinto Elemento', 1997, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('moon', 'Moon', 2009, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['psicologica', 'filosofica'], 'lento', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_aventura']).
filme('manchester-a-beira-mar', 'Manchester à Beira-Mar', 2016, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'psicologica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-curioso-caso-de-benjamin-button', 'O Curioso Caso de Benjamin Button', 2008, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'filosofica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('nomadland', 'Nomadland', 2020, 'drama', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'critica_social'], 'lento', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-maskara', 'O Máskara', 1994, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('ace-ventura-um-detetive-diferente', 'Ace Ventura: Um Detetive Diferente', 1994, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-virgem-de-40-anos', 'O Virgem de 40 Anos', 2005, 'comedia', 'live_action', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('o-vingador-do-futuro', 'O Vingador do Futuro', 1990, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', sim, ['acao_perseguicao']).
filme('kill-bill-volume-1', 'Kill Bill: Volume 1', 2003, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', sim, ['acao_perseguicao']).
filme('007-cassino-royale', '007: Cassino Royale', 2006, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('um-dia', 'Um Dia', 2011, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('amor-sublime-amor', 'Amor, Sublime Amor', 1961, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('carol', 'Carol', 2015, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'lento', nao, ['sem_reviravolta', 'romance_drama']).
filme('monstros-s-a', 'Monstros S.A.', 2001, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('zootopia-essa-cidade-e-o-bicho', 'Zootopia: Essa Cidade é o Bicho', 2016, 'animacao', 'animacao', ['leve', 'emocional'], ['critica_social', 'emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_emocional']).
filme('operacao-big-hero', 'Operação Big Hero', 2014, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('meu-malvado-favorito', 'Meu Malvado Favorito', 2010, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('carros', 'Carros', 2006, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('toy-story-2', 'Toy Story 2', 1999, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('como-treinar-o-seu-dragao', 'Como Treinar o Seu Dragão', 2010, 'animacao', 'animacao', ['emocional', 'fantastica'], ['emocional', 'aventura'], 'rapido', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-era-do-gelo', 'A Era do Gelo', 2002, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('valente', 'Valente', 2012, 'animacao', 'animacao', ['fantastica', 'emocional'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('moana-um-mar-de-aventuras', 'Moana: Um Mar de Aventuras', 2016, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-incriveis-2', 'Os Incríveis 2', 2018, 'animacao', 'animacao', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_aventura']).
filme('shrek-2', 'Shrek 2', 2004, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('detona-ralph', 'Detona Ralph', 2012, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'rapido', sim, ['aventura', 'acolhedor', 'emocional', 'animacao_emocional']).
filme('kung-fu-panda', 'Kung Fu Panda', 2008, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('procurando-dory', 'Procurando Dory', 2016, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('enrolados', 'Enrolados', 2010, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('aladdin', 'Aladdin', 1992, 'animacao', 'animacao', ['fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('meu-malvado-favorito-2', 'Meu Malvado Favorito 2', 2013, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('madagascar', 'Madagascar', 2005, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('universidade-monstros', 'Universidade Monstros', 2013, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('minions', 'Minions', 2015, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('super-mario-bros-o-filme', 'Super Mario Bros. O Filme', 2023, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('toy-story-4', 'Toy Story 4', 2019, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-bela-e-a-fera', 'A Bela e a Fera', 1991, 'animacao', 'animacao', ['fantastica', 'emocional'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-rei-leao-2019', 'O Rei Leão', 2019, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('o-estranho-mundo-de-jack', 'O Estranho Mundo de Jack', 1993, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['critica_social'], 'moderado', nao, ['fantasia', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('mulan', 'Mulan', 1998, 'animacao', 'animacao', ['fantastica', 'emocional'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('como-treinar-o-seu-dragao-2', 'Como Treinar o seu Dragão 2', 2014, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-noiva-cadaver', 'A Noiva Cadáver', 2005, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-era-do-gelo-2', 'A Era do Gelo 2', 2006, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('frozen-ii', 'Frozen II', 2019, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', sim, ['fantasia', 'aventura', 'emocional', 'animacao_fantasia']).
filme('shrek-terceiro', 'Shrek Terceiro', 2007, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('vida-de-inseto', 'Vida de Inseto', 1998, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('homem-aranha-atraves-do-aranhaverso', 'Homem-Aranha: Através do Aranhaverso', 2023, 'animacao', 'animacao', ['emocional', 'fantastica'], ['aventura', 'emocional'], 'rapido', sim, ['fantasia', 'aventura', 'emocional', 'animacao_aventura']).
filme('hotel-transilvania', 'Hotel Transilvânia', 2012, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('gato-de-botas-2-o-ultimo-pedido', 'Gato de Botas 2: O Último Pedido', 2022, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-era-do-gelo-3', 'A Era do Gelo 3', 2009, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('uma-aventura-lego', 'Uma Aventura Lego', 2014, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'rapido', sim, ['aventura', 'acolhedor', 'emocional', 'animacao_aventura']).
filme('carros-2', 'Carros 2', 2011, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-simpsons-o-filme', 'Os Simpsons: O Filme', 2007, 'animacao', 'animacao', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_emocional']).
filme('pets-a-vida-secreta-dos-bichos', 'Pets: A Vida Secreta dos Bichos', 2016, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('sing-quem-canta-seus-males-espanta', 'Sing - Quem Canta Seus Males Espanta', 2016, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-pequena-sereia', 'A Pequena Sereia', 1989, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('wifi-ralph-quebrando-a-internet', 'WiFi Ralph: Quebrando a Internet', 2018, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-era-do-gelo-4', 'A Era do Gelo 4', 2012, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('kung-fu-panda-2', 'Kung Fu Panda 2', 2011, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('shrek-para-sempre', 'Shrek Para Sempre', 2010, 'animacao', 'animacao', ['fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('hercules', 'Hércules', 1997, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('branca-de-neve-e-os-sete-anoes', 'Branca de Neve e os Sete Anões', 1938, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('festa-da-salsicha', 'Festa da Salsicha', 2016, 'animacao', 'animacao', ['leve'], ['critica_social'], 'moderado', nao, ['acolhedor', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('meu-malvado-favorito-3', 'Meu Malvado Favorito 3', 2017, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('megamente', 'Megamente', 2010, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', sim, ['acolhedor', 'emocional', 'animacao_emocional']).
filme('os-croods', 'Os Croods', 2013, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('madagascar-2', 'Madagascar 2', 2008, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('o-poderoso-chefinho', 'O Poderoso Chefinho', 2017, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('tarzan', 'Tarzan', 1999, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-nova-onda-do-imperador', 'A Nova Onda do Imperador', 2000, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('raya-e-o-ultimo-dragao', 'Raya e o Último Dragão', 2021, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('rango', 'Rango', 2011, 'animacao', 'animacao', ['leve'], ['filosofica', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('rio', 'Rio', 2011, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-origem-dos-guardioes', 'A Origem dos Guardiões', 2012, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('como-treinar-o-seu-dragao-3', 'Como Treinar o Seu Dragão 3', 2019, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('cinderela', 'Cinderela', 1950, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('lilo-stitch', 'Lilo & Stitch', 2002, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('divertida-mente-2', 'Divertida Mente 2', 2024, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional', 'filosofica'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('o-expresso-polar', 'O Expresso Polar', 2004, 'animacao', 'animacao', ['fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-espanta-tubaroes', 'O Espanta Tubarões', 2004, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('kung-fu-panda-3', 'Kung Fu Panda 3', 2016, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('robo-selvagem', 'Robô Selvagem', 2024, 'animacao', 'animacao', ['emocional', 'reflexiva'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('mogli-o-menino-lobo', 'Mogli: O Menino Lobo', 1967, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-guerra-dos-dalmatas', 'A Guerra dos Dálmatas', 1961, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('madagascar-3-os-procurados', 'Madagascar 3: Os Procurados', 2012, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('dois-irmaos-uma-jornada-fantastica', 'Dois Irmãos: Uma Jornada Fantástica', 2020, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'moderado', sim, ['fantasia', 'aventura', 'emocional', 'animacao_emocional']).
filme('bolt-supercao', 'Bolt: Supercão', 2008, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('ta-chovendo-hamburguer', 'Tá Chovendo Hambúrguer', 2009, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('carros-3', 'Carros 3', 2017, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('space-jam-o-jogo-do-seculo', 'Space Jam: O Jogo do Século', 1996, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('alice-no-pais-das-maravilhas', 'Alice no País das Maravilhas', 1951, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('uma-cilada-para-roger-rabbit', 'Uma Cilada para Roger Rabbit', 1988, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('pinoquio', 'Pinóquio', 1940, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-princesa-e-o-sapo', 'A Princesa e o Sapo', 2009, 'animacao', 'animacao', ['fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('hotel-transilvania-2', 'Hotel Transilvânia 2', 2015, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('pocahontas-o-encontro-de-dois-mundos', 'Pocahontas: O Encontro de Dois Mundos', 1995, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-bom-dinossauro', 'O Bom Dinossauro', 2015, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('bambi', 'Bambi', 1942, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('red-crescer-e-uma-fera', 'Red: Crescer é Uma Fera', 2022, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('as-aventuras-de-tintim', 'As Aventuras de Tintim', 2011, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('irmao-urso', 'Irmão Urso', 2003, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('peter-pan', 'Peter Pan', 1953, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('a-dama-e-o-vagabundo', 'A Dama e o Vagabundo', 1955, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('anastasia', 'Anastasia', 1997, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('lego-batman-o-filme', 'Lego Batman: O Filme', 2017, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('ilha-dos-cachorros', 'Ilha dos Cachorros', 2018, 'animacao', 'animacao', ['reflexiva', 'leve'], ['emocional', 'critica_social'], 'moderado', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_emocional']).
filme('happy-feet-o-pinguim', 'Happy Feet: O Pinguim', 2006, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('elementos', 'Elementos', 2023, 'animacao', 'animacao', ['emocional', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-bela-adormecida', 'A Bela Adormecida', 1959, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-fuga-das-galinhas', 'A Fuga das Galinhas', 2000, 'animacao', 'animacao', ['leve'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('o-corcunda-de-notre-dame', 'O Corcunda de Notre Dame', 1996, 'animacao', 'animacao', ['fantastica', 'emocional'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('it-a-coisa', 'It: A Coisa', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social', 'investigacao'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('guerra-mundial-z', 'Guerra Mundial Z', 2013, 'terror', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('alien-o-oitavo-passageiro', 'Alien: O Oitavo Passageiro', 1979, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('cisne-negro', 'Cisne Negro', 2010, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'critica_social'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'critica_social']).
filme('prometheus', 'Prometheus', 2012, 'terror', 'live_action', ['reflexiva', 'tensa'], ['critica_social', 'misterio'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('zumbilandia', 'Zumbilândia', 2009, 'terror', 'live_action', ['sombria', 'tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('tubarao', 'Tubarão', 1975, 'terror', 'live_action', ['tensa'], ['psicologica', 'critica_social'], 'rapido', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('psicose', 'Psicose', 1960, 'terror', 'live_action', ['tensa'], ['psicologica', 'investigacao'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('bird-box', 'Bird Box', 2018, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('jogos-mortais', 'Jogos Mortais', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('it-capitulo-dois', 'IT: Capítulo Dois', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('todo-mundo-quase-morto', 'Todo Mundo Quase Morto', 2004, 'terror', 'live_action', ['sombria', 'tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('alien-covenant', 'Alien: Covenant', 2017, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('aniquilacao', 'Aniquilação', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('invocacao-do-mal-2', 'Invocação do Mal 2', 2016, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('uma-noite-de-crime', 'Uma Noite de Crime', 2013, 'terror', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('exterminio', 'Extermínio', 2002, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_psicologico']).
filme('rua-cloverfield-10', 'Rua Cloverfield, 10', 2016, 'terror', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('o-segredo-da-cabana', 'O Segredo da Cabana', 2012, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'rapido', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_sobrenatural']).
filme('constantine', 'Constantine', 2005, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('megatubarao', 'Megatubarão', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('vida', 'Vida', 2017, 'terror', 'live_action', ['tensa'], ['critica_social'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_investigativo']).
filme('a-mumia', 'A Múmia', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('um-lugar-silencioso-parte-ii', 'Um Lugar Silencioso - Parte II', 2021, 'terror', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_psicologico']).
filme('sobrenatural', 'Sobrenatural', 2011, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-lenda-do-cavaleiro-sem-cabeca', 'A Lenda do Cavaleiro Sem Cabeça', 1999, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('a-freira', 'A Freira', 2018, 'terror', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('resident-evil-o-hospede-maldito', 'Resident Evil: O Hóspede Maldito', 2002, 'terror', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('mae', 'mãe!', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('joao-e-maria-cacadores-de-bruxas', 'João e Maria: Caçadores de Bruxas', 2013, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'folk_horror']).
filme('gremlins', 'Gremlins', 1984, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('advogado-do-diabo', 'Advogado do Diabo', 1997, 'terror', 'live_action', ['tensa', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'critica_social', 'terror_sobrenatural']).
filme('blade-o-cacador-de-vampiros', 'Blade: O Caçador de Vampiros', 1998, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('premonicao', 'Premonição', 2000, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('van-helsing-o-cacador-de-monstros', 'Van Helsing: O Caçador de Monstros', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('uma-noite-de-crime-anarquia', 'Uma Noite de Crime: Anarquia', 2014, 'terror', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_psicologico']).
filme('o-menu', 'O Menu', 2022, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_psicologico']).
filme('um-drink-no-inferno', 'Um Drink no Inferno', 1996, 'terror', 'live_action', ['sombria'], ['investigacao', 'psicologica'], 'rapido', nao, ['terror_psicologico', 'sem_reviravolta', 'folk_horror']).
filme('invocacao-do-mal-3-a-ordem-do-demonio', 'Invocação do Mal 3: A Ordem do Demônio', 2021, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('a-substancia', 'A Substância', 2024, 'terror', 'live_action', ['sombria', 'tensa'], ['critica_social', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('a-morte-te-da-parabens', 'A Morte Te Dá Parabéns', 2017, 'terror', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('annabelle', 'Annabelle', 2014, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('entrevista-com-o-vampiro', 'Entrevista com o Vampiro', 1994, 'terror', 'live_action', ['sombria', 'reflexiva'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'terror_sobrenatural']).
filme('alien-3', 'Alien 3', 1992, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('dracula-a-historia-nunca-contada', 'Dracula: A História Nunca Contada', 2014, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('sinais', 'Sinais', 2002, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('obsessao', 'Obsessão', 2026, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('sweeney-todd-o-barbeiro-demoniaco-da-rua-fleet', 'Sweeney Todd: O Barbeiro Demoníaco da Rua Fleet', 2007, 'terror', 'live_action', ['sombria'], ['investigacao'], 'moderado', nao, ['sem_reviravolta', 'terror_investigativo']).
filme('meu-namorado-e-um-zumbi', 'Meu Namorado é um Zumbi', 2013, 'terror', 'live_action', ['reflexiva'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'terror_sobrenatural']).
filme('o-telefone-preto', 'O Telefone Preto', 2022, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-nevoeiro', 'O Nevoeiro', 2007, 'terror', 'live_action', ['tensa', 'reflexiva'], ['critica_social', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'critica_social']).
filme('annabelle-2-a-criacao-do-mal', 'Annabelle 2: A Criação do Mal', 2017, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-ii', 'Jogos Mortais II', 2005, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('dracula-de-bram-stoker', 'Drácula de Bram Stoker', 1992, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('casamento-sangrento', 'Casamento Sangrento', 2019, 'terror', 'live_action', ['tensa', 'reflexiva'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('exterminio-2', 'Extermínio 2', 2007, 'terror', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('alien-a-ressurreicao', 'Alien: A Ressurreição', 1997, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('a-orfa', 'A Órfã', 2009, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('a-bruxa-de-blair', 'A Bruxa de Blair', 1999, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('12-horas-para-sobreviver-o-ano-da-eleicao', '12 Horas para Sobreviver: O Ano da Eleição', 2016, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('pecadores', 'Pecadores', 2025, 'terror', 'live_action', ['sombria', 'tensa'], ['critica_social', 'misterio'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('blade-ii-o-cacador-de-vampiros', 'Blade II: O Caçador de Vampiros', 2002, 'terror', 'live_action', ['sombria'], ['misterio'], 'rapido', nao, ['sem_reviravolta', 'terror_sobrenatural']).
filme('aguas-rasas', 'Águas Rasas', 2016, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('a-morte-do-demonio-2013', 'A Morte do Demônio', 2013, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-colina-escarlate', 'A Colina Escarlate', 2015, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('nao-nao-olhe', 'Não! Não Olhe!', 2022, 'terror', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'critica_social'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_investigativo']).
filme('five-nights-at-freddy-s-o-pesadelo-sem-fim', 'Five Nights at Freddy\'s - O Pesadelo Sem Fim', 2023, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('halloween', 'Halloween', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('escape-room', 'Escape Room', 2019, 'terror', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('alien-vs-predador', 'Alien vs. Predador', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('terror-em-silent-hill', 'Terror em Silent Hill', 2006, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('1408', '1408', 2007, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-iii', 'Jogos Mortais III', 2006, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('doutor-sono', 'Doutor Sono', 2019, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'lento', nao, ['terror_psicologico', 'tensao_alta', 'construcao_lenta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('tempo', 'Tempo', 2021, 'terror', 'live_action', ['tensa', 'reflexiva'], ['misterio'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_psicologico']).
filme('premonicao-2', 'Premonição 2', 2003, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('rec', '[REC]', 2007, 'terror', 'live_action', ['tensa'], ['psicologica', 'critica_social'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('m3gan', 'M3GAN', 2022, 'terror', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_psicologico']).
filme('alien-romulus', 'Alien: Romulus', 2024, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('resident-evil-2-apocalipse', 'Resident Evil 2: Apocalipse', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('hush-a-morte-ouve', 'Hush: A Morte Ouve', 2016, 'terror', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('panico-2', 'Pânico 2', 1997, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('a-autopsia', 'A Autópsia', 2016, 'terror', 'live_action', ['tensa'], ['misterio', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('dragao-vermelho', 'Dragão Vermelho', 2002, 'terror', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('carrie-a-estranha', 'Carrie, A Estranha', 2013, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('sobrenatural-capitulo-2', 'Sobrenatural: Capítulo 2', 2013, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('resident-evil-3-a-extincao', 'Resident Evil 3: A Extinção', 2007, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('premonicao-3', 'Premonição 3', 2006, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('madrugada-dos-mortos', 'Madrugada dos Mortos', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('a-pele-que-habito', 'A Pele Que Habito', 2011, 'terror', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'misterio'], 'moderado', sim, ['terror_psicologico', 'reviravolta']).
filme('abismo-do-medo', 'Abismo do Medo', 2005, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('os-passaros', 'Os Pássaros', 1963, 'terror', 'live_action', ['tensa'], ['misterio', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('army-of-the-dead-invasao-em-las-vegas', 'Army of the Dead: Invasão em Las Vegas', 2021, 'terror', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('carrie-a-estranha-1976', 'Carrie, A Estranha', 1976, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-bebe-de-rosemary', 'O Bebê de Rosemary', 1968, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('mama', 'Mama', 2013, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('os-vingadores-the-avengers', 'Os Vingadores: The Avengers', 2012, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('avatar', 'Avatar', 2009, 'ficcao_cientifica', 'live_action', ['fantastica', 'reflexiva'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('vingadores-guerra-infinita', 'Vingadores: Guerra Infinita', 2018, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guardioes-da-galaxia', 'Guardiões da Galáxia', 2014, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('vingadores-ultimato', 'Vingadores: Ultimato', 2019, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_tecnologia']).
filme('homem-de-ferro', 'Homem de Ferro', 2008, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('vingadores-era-de-ultron', 'Vingadores: Era de Ultron', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('capitao-america-guerra-civil', 'Capitão América: Guerra Civil', 2016, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-aranha-de-volta-ao-lar', 'Homem-Aranha: De Volta ao Lar', 2017, 'ficcao_cientifica', 'live_action', ['fantastica', 'emocional'], ['aventura'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_aventura']).
filme('homem-de-ferro-3', 'Homem de Ferro 3', 2013, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jogos-vorazes', 'Jogos Vorazes', 2012, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guardioes-da-galaxia-vol-2', 'Guardiões da Galáxia - Vol. 2', 2017, 'ficcao_cientifica', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('homem-aranha-sem-volta-para-casa', 'Homem-Aranha: Sem Volta Para Casa', 2021, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('capitao-america-o-primeiro-vingador', 'Capitão América: O Primeiro Vingador', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-de-ferro-2', 'Homem de Ferro 2', 2010, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guerra-nas-estrelas', 'Guerra nas Estrelas', 1977, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('thor-ragnarok', 'Thor: Ragnarok', 2017, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('de-volta-para-o-futuro', 'De Volta para o Futuro', 1985, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jurassic-world-o-mundo-dos-dinossauros', 'Jurassic World: O Mundo dos Dinossauros', 2015, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-aranha', 'Homem-Aranha', 2002, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-formiga', 'Homem-Formiga', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('star-wars-o-despertar-da-forca', 'Star Wars: O Despertar da Força', 2015, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('logan', 'Logan', 2017, 'ficcao_cientifica', 'live_action', ['emocional', 'reflexiva'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('capitao-america-o-soldado-invernal', 'Capitão América: O Soldado Invernal', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-espetacular-homem-aranha', 'O Espetacular Homem-Aranha', 2012, 'ficcao_cientifica', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guerra-nas-estrelas-o-imperio-contra-ataca', 'Guerra nas Estrelas: O Império Contra-Ataca', 1980, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura', 'misterio'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_aventura']).
filme('jogos-vorazes-em-chamas', 'Jogos Vorazes: Em Chamas', 2013, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('maze-runner-correr-ou-morrer', 'Maze Runner: Correr ou Morrer', 2014, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jurassic-park-o-parque-dos-dinossauros', 'Jurassic Park: O Parque dos Dinossauros', 1993, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-aranha-longe-de-casa', 'Homem-Aranha: Longe de Casa', 2019, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_tecnologia']).
filme('venom', 'Venom', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'ficcao_tecnologia']).
filme('lucy', 'Lucy', 2014, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica', 'aventura'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('eu-sou-a-lenda', 'Eu Sou a Lenda', 2007, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guerra-nas-estrelas-o-retorno-de-jedi', 'Guerra nas Estrelas: O Retorno de Jedi', 1983, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('capita-marvel', 'Capitã Marvel', 2019, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', sim, ['aventura', 'reviravolta', 'ficcao_tecnologia']).
filme('jogos-vorazes-a-esperanca-parte-1', 'Jogos Vorazes: A Esperança - Parte 1', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_filosofica']).
filme('homem-aranha-2', 'Homem-Aranha 2', 2004, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('brilho-eterno-de-uma-mente-sem-lembrancas', 'Brilho Eterno de uma Mente sem Lembranças', 2004, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'psicologica'], 'moderado', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('rogue-one-uma-historia-star-wars', 'Rogue One: Uma História Star Wars', 2016, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('x-men-dias-de-um-futuro-esquecido', 'X-Men: Dias de um Futuro Esquecido', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('star-wars-os-ultimos-jedi', 'Star Wars: Os Últimos Jedi', 2017, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('o-homem-de-aco', 'O Homem de Aço', 2013, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('star-wars-episodio-i-a-ameaca-fantasma', 'Star Wars: Episódio I - A Ameaça Fantasma', 1999, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('v-de-vinganca', 'V de Vingança', 2006, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica', 'aventura'], 'rapido', sim, ['filosofico', 'aventura', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('homem-aranha-3', 'Homem-Aranha 3', 2007, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('no-limite-do-amanha', 'No Limite do Amanhã', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_aventura']).
filme('star-wars-episodio-iii-a-vinganca-dos-sith', 'Star Wars: Episódio III - A Vingança dos Sith', 2005, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('mib-homens-de-preto', 'MIB - Homens de Preto', 1997, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['misterio', 'aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('o-exterminador-do-futuro', 'O Exterminador do Futuro', 1984, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'psicologica'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-espetacular-homem-aranha-2-a-ameaca-de-electro', 'O Espetacular Homem-Aranha 2: A Ameaça de Electro', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('star-wars-episodio-ii-ataque-dos-clones', 'Star Wars: Episódio II - Ataque dos Clones', 2002, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('avatar-o-caminho-da-agua', 'Avatar: O Caminho da Água', 2022, 'ficcao_cientifica', 'live_action', ['fantastica', 'emocional'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('homem-formiga-e-a-vespa', 'Homem-Formiga e a Vespa', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('passageiros', 'Passageiros', 2016, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'filosofica'], 'moderado', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_aventura']).
filme('de-volta-para-o-futuro-ii', 'De Volta para o Futuro II', 1989, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('laranja-mecanica', 'Laranja Mecânica', 1971, 'ficcao_cientifica', 'live_action', ['fantastica', 'reflexiva'], ['psicologica', 'misterio'], 'moderado', sim, ['reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('x-men-apocalipse', 'X-Men: Apocalipse', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('liga-da-justica', 'Liga da Justiça', 2017, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('x-men-primeira-classe', 'X-Men: Primeira Classe', 2011, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('circulo-de-fogo', 'Círculo de Fogo', 2013, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('divergente', 'Divergente', 2014, 'ficcao_cientifica', 'live_action', ['fantastica'], ['filosofica', 'aventura'], 'moderado', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jogos-vorazes-a-esperanca-o-final', 'Jogos Vorazes: A Esperança - O Final', 2015, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'ficcao_filosofica']).
filme('o-incrivel-hulk', 'O Incrível Hulk', 2008, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('eu-robo', 'Eu, Robô', 2004, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('2012', '2012', 2009, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jurassic-world-reino-ameacado', 'Jurassic World: Reino Ameaçado', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('transformers', 'Transformers', 2007, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('x-men-o-filme', 'X-Men: O Filme', 2000, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('planeta-dos-macacos-o-confronto', 'Planeta dos Macacos: O Confronto', 2014, 'ficcao_cientifica', 'live_action', ['emocional', 'reflexiva'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-preco-do-amanha', 'O Preço do Amanhã', 2011, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica', 'misterio'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('matrix-reloaded', 'Matrix Reloaded', 2003, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('e-t-o-extraterrestre', 'E.T.: O Extraterrestre', 1982, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('oblivion', 'Oblivion', 2013, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'filosofica'], 'rapido', sim, ['filosofico', 'aventura', 'reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('de-volta-para-o-futuro-iii', 'De Volta para o Futuro III', 1990, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('sem-limites', 'Sem Limites', 2011, 'ficcao_cientifica', 'live_action', ['tensa'], ['filosofica', 'misterio'], 'rapido', sim, ['filosofico', 'reviravolta', 'ficcao_tecnologia']).
filme('viuva-negra', 'Viúva Negra', 2021, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('tenet', 'Tenet', 2020, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'aventura'], 'rapido', sim, ['aventura', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('x-men-origens-wolverine', 'X-Men Origens: Wolverine', 2009, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('venom-tempo-de-carnificina', 'Venom: Tempo de Carnificina', 2021, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('aliens-o-resgate', 'Aliens: O Resgate', 1986, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'psicologica'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('maze-runner-prova-de-fogo', 'Maze Runner: Prova de Fogo', 2015, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_filosofica']).
filme('looper-assassinos-do-futuro', 'Looper: Assassinos do Futuro', 2012, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['filosofica', 'aventura'], 'rapido', sim, ['filosofico', 'aventura', 'reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('x-men-2', 'X-Men 2', 2003, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('mib-homens-de-preto-iii', 'MIB - Homens de Preto III', 2012, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('star-wars-a-ascensao-skywalker', 'Star Wars: A Ascensão Skywalker', 2019, 'ficcao_cientifica', 'live_action', ['fantastica', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('matrix-revolutions', 'Matrix Revolutions', 2003, 'ficcao_cientifica', 'live_action', ['reflexiva', 'fantastica'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('mib-homens-de-preto-ii', 'MIB - Homens de Preto II', 2002, 'ficcao_cientifica', 'live_action', ['fantastica'], ['misterio', 'aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('godzilla-vs-kong', 'Godzilla vs. Kong', 2021, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('independence-day', 'Independence Day', 1996, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('star-trek', 'Star Trek', 2009, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_aventura']).
filme('x-men-o-confronto-final', 'X-Men: O Confronto Final', 2006, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('wolverine-imortal', 'Wolverine: Imortal', 2013, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('a-serie-divergente-insurgente', 'A Série Divergente: Insurgente', 2015, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('sonic-o-filme', 'Sonic: O Filme', 2020, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('alita-anjo-de-combate', 'Alita: Anjo de Combate', 2019, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'ficcao_tecnologia']).
filme('watchmen-o-filme', 'Watchmen: O Filme', 2009, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica', 'aventura'], 'rapido', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_filosofica']).
filme('free-guy-assumindo-o-controle', 'Free Guy: Assumindo o Controle', 2021, 'ficcao_cientifica', 'live_action', ['fantastica', 'emocional'], ['aventura', 'filosofica'], 'rapido', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('quarteto-fantastico', 'Quarteto Fantástico', 2005, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('godzilla', 'Godzilla', 2014, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('a-bela-e-a-fera-2017', 'A Bela e a Fera', 2017, 'romance', 'live_action', ['leve', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('crepusculo', 'Crepúsculo', 2008, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('edward-maos-de-tesoura', 'Edward Mãos de Tesoura', 1990, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('malevola', 'Malévola', 2014, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-grande-gatsby', 'O Grande Gatsby', 2013, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-forma-da-agua', 'A Forma da Água', 2017, 'romance', 'live_action', ['leve', 'reflexiva'], ['romantica', 'emocional'], 'moderado', sim, ['romance_leve']).
filme('me-chame-pelo-seu-nome', 'Me Chame Pelo Seu Nome', 2017, 'romance', 'live_action', ['reflexiva'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-lado-bom-da-vida', 'O Lado Bom da Vida', 2012, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-fabuloso-destino-de-amelie-poulain', 'O Fabuloso Destino de Amélie Poulain', 2001, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cinquenta-tons-de-cinza', 'Cinquenta Tons de Cinza', 2015, 'romance', 'live_action', ['emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-culpa-e-das-estrelas', 'A Culpa é das Estrelas', 2014, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('quem-quer-ser-um-milionario', 'Quem Quer Ser um Milionário?', 2008, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'rapido', sim, ['romance_leve']).
filme('uma-mente-brilhante', 'Uma Mente Brilhante', 2001, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', sim, ['romance_drama']).
filme('500-dias-com-ela', '(500) Dias com Ela', 2009, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', sim, ['romance_drama']).
filme('a-teoria-de-tudo', 'A Teoria de Tudo', 2014, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('aladdin-2019', 'Aladdin', 2019, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('top-gun-ases-indomaveis', 'Top Gun - Ases Indomáveis', 1986, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-saga-crepusculo-lua-nova', 'A Saga Crepúsculo: Lua Nova', 2009, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('amor-a-toda-prova', 'Amor a Toda Prova', 2011, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', sim, ['romance_leve']).
filme('365-dias', '365 Dias', 2020, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-saga-crepusculo-amanhecer-parte-2', 'A Saga Crepúsculo: Amanhecer - Parte 2', 2012, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', sim, ['romance_leve']).
filme('a-saga-crepusculo-amanhecer-parte-1', 'A Saga Crepúsculo: Amanhecer - Parte 1', 2011, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-saga-crepusculo-eclipse', 'A Saga Crepúsculo: Eclipse', 2010, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('feitico-do-tempo', 'Feitiço do Tempo', 1993, 'romance', 'live_action', ['reflexiva', 'leve'], ['filosofica', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('uma-linda-mulher', 'Uma Linda Mulher', 1990, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('scott-pilgrim-contra-o-mundo', 'Scott Pilgrim Contra o Mundo', 2010, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('american-pie-a-primeira-vez-e-inesquecivel', 'American Pie: A Primeira Vez é Inesquecível', 1999, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('amizade-colorida', 'Amizade Colorida', 2011, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('after', 'After', 2019, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('golpe-duplo', 'Golpe Duplo', 2015, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'rapido', sim, ['romance_leve']).
filme('cinquenta-tons-de-liberdade', 'Cinquenta Tons de Liberdade', 2018, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('encontros-e-desencontros', 'Encontros e Desencontros', 2003, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional'], 'lento', nao, ['sem_reviravolta', 'romance_drama']).
filme('cinquenta-tons-mais-escuros', 'Cinquenta Tons Mais Escuros', 2017, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('como-se-fosse-a-primeira-vez', 'Como Se Fosse a Primeira Vez', 2004, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('meia-noite-em-paris', 'Meia Noite em Paris', 2011, 'romance', 'live_action', ['reflexiva', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('grease-nos-tempos-da-brilhantina', 'Grease: Nos Tempos da Brilhantina', 1978, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('juno', 'Juno', 2007, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-proposta', 'A Proposta', 2009, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-segredo-de-brokeback-mountain', 'O Segredo de Brokeback Mountain', 2005, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('sim-senhor', 'Sim Senhor', 2008, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cinderela-2015', 'Cinderela', 2015, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-barraca-do-beijo', 'A Barraca do Beijo', 2018, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-incrivel-historia-de-adaline', 'A Incrível História de Adaline', 2015, 'romance', 'live_action', ['leve', 'reflexiva'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('mamma-mia', 'Mamma Mia!', 2008, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-lagosta', 'O Lagosta', 2015, 'romance', 'live_action', ['reflexiva'], ['emocional', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('adoraveis-mulheres', 'Adoráveis Mulheres', 2019, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-escolha-perfeita', 'A Escolha Perfeita', 2012, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('dirty-dancing-ritmo-quente', 'Dirty Dancing: Ritmo Quente', 1987, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('entrando-numa-fria', 'Entrando numa Fria', 2000, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('um-corpo-que-cai', 'Um Corpo Que Cai', 1958, 'romance', 'live_action', ['reflexiva'], ['romantica', 'emocional'], 'moderado', sim, ['romance_classico']).
filme('simplesmente-acontece', 'Simplesmente Acontece', 2014, 'romance', 'live_action', ['emocional', 'leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('moonrise-kingdom', 'Moonrise Kingdom', 2012, 'romance', 'live_action', ['reflexiva', 'emocional'], ['romantica', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('hitch-conselheiro-amoroso', 'Hitch: Conselheiro Amoroso', 2005, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('com-amor-simon', 'Com Amor, Simon', 2018, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('casablanca', 'Casablanca', 1943, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica'], 'rapido', sim, ['romance_classico']).
filme('esposa-de-mentirinha', 'Esposa de Mentirinha', 2011, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('ghost-do-outro-lado-da-vida', 'Ghost: Do Outro Lado da Vida', 1990, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('encontro-marcado', 'Encontro Marcado', 1998, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-cinco-passos-de-voce', 'A Cinco Passos de Você', 2019, 'romance', 'live_action', ['emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-turista', 'O Turista', 2010, 'romance', 'live_action', ['emocional'], ['romantica'], 'rapido', sim, ['romance_leve']).
filme('encantada', 'Encantada', 2007, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('amor-e-outras-drogas', 'Amor e Outras Drogas', 2010, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('american-pie-2-a-segunda-vez-e-ainda-melhor', 'American Pie 2: A Segunda Vez é Ainda Melhor', 2001, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-diario-de-bridget-jones', 'O Diário de Bridget Jones', 2001, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('beleza-oculta', 'Beleza Oculta', 2016, 'romance', 'live_action', ['emocional', 'leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('quem-vai-ficar-com-mary', 'Quem Vai Ficar com Mary?', 1998, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-ilusionista', 'O Ilusionista', 2006, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', sim, ['romance_leve']).
filme('romeu-julieta', 'Romeu + Julieta', 1996, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('after-depois-da-verdade', 'After: Depois da Verdade', 2020, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-diario-da-princesa', 'O Diário da Princesa', 2001, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-princesa-prometida', 'A Princesa Prometida', 1987, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_classico']).
filme('entrando-numa-fria-maior-ainda', 'Entrando numa Fria Maior Ainda', 2004, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cidades-de-papel', 'Cidades de Papel', 2015, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-barraca-do-beijo-2', 'A Barraca do Beijo 2', 2020, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('sexo-sem-compromisso', 'Sexo Sem Compromisso', 2011, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cinema-paradiso', 'Cinema Paradiso', 1988, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('moulin-rouge-amor-em-vermelho', 'Moulin Rouge: Amor em Vermelho', 2001, 'romance', 'live_action', ['leve', 'reflexiva'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('as-patricinhas-de-beverly-hills', 'As Patricinhas de Beverly Hills', 1995, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('azul-e-a-cor-mais-quente', 'Azul É A Cor Mais Quente', 2013, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('misterio-no-mediterraneo', 'Mistério no Mediterrâneo', 2019, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('um-principe-em-nova-york', 'Um Príncipe em Nova York', 1988, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('aliados', 'Aliados', 2016, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('desejo-e-reparacao', 'Desejo e Reparação', 2007, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('penetras-bons-de-bico', 'Penetras Bons de Bico', 2005, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-praia', 'A Praia', 2000, 'romance', 'live_action', ['emocional'], ['filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('high-school-musical', 'High School Musical', 2006, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('missao-madrinha-de-casamento', 'Missão Madrinha de Casamento', 2011, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('harry-sally-feitos-um-para-o-outro', 'Harry & Sally: Feitos um para o Outro', 1989, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('como-nao-perder-essa-mulher', 'Como Não Perder Essa Mulher', 2013, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('operacao-cupido', 'Operação Cupido', 1998, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('como-perder-um-homem-em-10-dias', 'Como Perder um Homem em 10 Dias', 2003, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('stardust-o-misterio-da-estrela', 'Stardust: O Mistério da Estrela', 2007, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('bonequinha-de-luxo', 'Bonequinha de Luxo', 1961, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('do-que-as-mulheres-gostam', 'Do Que as Mulheres Gostam', 2000, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('american-pie-o-casamento', 'American Pie: O Casamento', 2003, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('e-o-vento-levou', '...E o Vento Levou', 1939, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('d-u-f-f-voce-conhece-tem-ou-e', 'D.U.F.F. - Você Conhece, Tem ou É', 2015, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('match-point', 'Match Point', 2005, 'romance', 'live_action', ['reflexiva'], ['emocional'], 'moderado', sim, ['romance_drama']).
filme('ligeiramente-gravidos', 'Ligeiramente Grávidos', 2007, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('gilbert-grape-aprendiz-de-sonhador', 'Gilbert Grape: Aprendiz de Sonhador', 1993, 'romance', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('yesterday', 'Yesterday', 2019, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('noivo-neurotico-noiva-nervosa', 'Noivo Neurótico, Noiva Nervosa', 1977, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('um-amor-para-recordar', 'Um Amor para Recordar', 2002, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('querido-john', 'Querido John', 2010, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('deadpool', 'Deadpool', 2016, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('pulp-fiction-tempo-de-violencia', 'Pulp Fiction: Tempo de Violência', 1994, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'rapido', sim, ['critica_social', 'comedia_social']).
filme('o-lobo-de-wall-street', 'O Lobo de Wall Street', 2013, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'rapido', sim, ['critica_social', 'comedia_social']).
filme('deadpool-2', 'Deadpool 2', 2018, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('a-fantastica-fabrica-de-chocolate', 'A Fantástica Fábrica de Chocolate', 2005, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('era-uma-vez-em-hollywood', 'Era Uma Vez em… Hollywood', 2019, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', sim, ['critica_social', 'comedia_social']).
filme('jumanji-bem-vindo-a-selva', 'Jumanji: Bem-Vindo à Selva', 2017, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('birdman-ou-a-inesperada-virtude-da-ignorancia', 'Birdman ou (A Inesperada Virtude da Ignorância)', 2014, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('ted', 'Ted', 2012, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('green-book-o-guia', 'Green Book: O Guia', 2018, 'comedia', 'live_action', ['emocional', 'leve'], ['critica_social', 'emocional'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('esqueceram-de-mim', 'Esqueceram de Mim', 1990, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-grande-lebowski', 'O Grande Lebowski', 1998, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social'], 'moderado', sim, ['humor', 'critica_social', 'comedia_leve']).
filme('todo-poderoso', 'Todo Poderoso', 2003, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('se-beber-nao-case-parte-ii', 'Se Beber, Não Case! Parte II', 2011, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('sr-sra-smith', 'Sr. & Sra. Smith', 2005, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('kingsman-o-circulo-dourado', 'Kingsman: O Círculo Dourado', 2017, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('anjos-da-lei', 'Anjos da Lei', 2012, 'comedia', 'live_action', ['leve'], ['critica_social', 'emocional'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('esqueceram-de-mim-2-perdido-em-nova-york', 'Esqueceram de Mim 2: Perdido em Nova York', 1992, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('jojo-rabbit', 'Jojo Rabbit', 2019, 'comedia', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('shazam', 'Shazam!', 2019, 'comedia', 'live_action', ['leve'], ['emocional'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('snatch-porcos-e-diamantes', 'Snatch: Porcos e Diamantes', 2000, 'comedia', 'live_action', ['leve'], ['critica_social', 'aventura'], 'rapido', sim, ['humor', 'critica_social', 'comedia_leve']).
filme('cruella', 'Cruella', 2021, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('a-grande-aposta', 'A Grande Aposta', 2015, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'rapido', sim, ['critica_social', 'comedia_social']).
filme('os-caca-fantasmas', 'Os Caça-Fantasmas', 1984, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-esquadrao-suicida', 'O Esquadrão Suicida', 2021, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('familia-do-bagulho', 'Família do Bagulho', 2013, 'comedia', 'live_action', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('jumanji-proxima-fase', 'Jumanji: Próxima Fase', 2019, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('se-beber-nao-case-parte-iii', 'Se Beber, Não Case! Parte III', 2013, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('lady-bird-a-hora-de-voar', 'Lady Bird - A Hora de Voar', 2017, 'comedia', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('thor-amor-e-trovao', 'Thor: Amor e Trovão', 2022, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('dois-caras-legais', 'Dois Caras Legais', 2016, 'comedia', 'live_action', ['leve'], ['critica_social'], 'rapido', sim, ['humor', 'critica_social', 'comedia_social']).
filme('oito-mulheres-e-um-segredo', 'Oito Mulheres e um Segredo', 2018, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('anjos-da-lei-2', 'Anjos da Lei 2', 2014, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-fantasmas-se-divertem', 'Os Fantasmas se Divertem', 1988, 'comedia', 'live_action', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('clube-dos-cinco', 'Clube dos Cinco', 1985, 'comedia', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('chumbo-grosso', 'Chumbo Grosso', 2007, 'comedia', 'live_action', ['leve'], ['aventura', 'critica_social'], 'rapido', sim, ['humor', 'critica_social', 'comedia_social']).
filme('baywatch-s-o-s-malibu', 'Baywatch: S.O.S. Malibu', 2017, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('o-grinch', 'O Grinch', 2000, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('superbad-e-hoje', 'Superbad: É Hoje', 2007, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('todo-mundo-em-panico', 'Todo Mundo em Pânico', 2000, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('ted-2', 'Ted 2', 2015, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('trem-bala', 'Trem-Bala', 2022, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('velozes-furiosos-hobbs-shaw', 'Velozes & Furiosos: Hobbs & Shaw', 2019, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('click', 'Click', 2006, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('sombras-da-noite', 'Sombras da Noite', 2012, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('a-mentira', 'A Mentira', 2010, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('uma-noite-no-museu-2', 'Uma Noite no Museu 2', 2009, 'comedia', 'live_action', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('jogos-trapacas-e-dois-canos-fumegantes', 'Jogos, Trapaças e Dois Canos Fumegantes', 1998, 'comedia', 'live_action', ['leve'], ['critica_social'], 'rapido', sim, ['humor', 'critica_social', 'comedia_leve']).
filme('vizinhos', 'Vizinhos', 2014, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('red-aposentados-e-perigosos', 'RED - Aposentados e Perigosos', 2010, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('glass-onion-um-misterio-knives-out', 'Glass Onion: Um Mistério Knives Out', 2022, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', sim, ['humor', 'critica_social', 'comedia_social']).
filme('trovao-tropical', 'Trovão Tropical', 2008, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-bad-boys', 'Os Bad Boys', 1995, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-agente-da-u-n-c-l-e', 'O Agente da U.N.C.L.E.', 2015, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('e-o-fim', 'É o Fim', 2013, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('projeto-x-uma-festa-fora-de-controle', 'Projeto X: Uma Festa Fora de Controle', 2012, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('quero-matar-meu-chefe', 'Quero Matar Meu Chefe', 2011, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('debi-loide-dois-idiotas-em-apuros', 'Debi & Lóide: Dois Idiotas em Apuros', 1994, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('magnatas-do-crime', 'Magnatas do Crime', 2020, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('capitao-fantastico', 'Capitão Fantástico', 2016, 'comedia', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('gente-grande', 'Gente Grande', 2010, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('caca-fantasmas', 'Caça-Fantasmas', 2016, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('dupla-explosiva', 'Dupla Explosiva', 2017, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('uma-baba-quase-perfeita', 'Uma Babá Quase Perfeita', 1993, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('alerta-vermelho', 'Alerta Vermelho', 2021, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('o-ditador', 'O Ditador', 2012, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('monty-python-em-busca-do-calice-sagrado', 'Monty Python em Busca do Cálice Sagrado', 1975, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('a-espia-que-sabia-de-menos', 'A Espiã Que Sabia de Menos', 2015, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-noite-do-jogo', 'A Noite do Jogo', 2018, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-espiao-e-meio', 'Um Espião e Meio', 2016, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('zumbilandia-atire-duas-vezes', 'Zumbilândia: Atire Duas Vezes', 2019, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-goonies', 'Os Goonies', 1985, 'comedia', 'live_action', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('dr-fantastico', 'Dr. Fantástico', 1964, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('a-entrevista', 'A Entrevista', 2014, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('uma-noite-no-museu-3-o-segredo-da-tumba', 'Uma Noite no Museu 3: O Segredo da Tumba', 2014, 'comedia', 'live_action', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('jungle-cruise', 'Jungle Cruise', 2021, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('eu-tonya', 'Eu, Tonya', 2017, 'comedia', 'live_action', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('borat-o-segundo-melhor-reporter-do-glorioso-pais-cazaquistao-viaja-a-a', 'Borat: O Segundo Melhor Repórter do Glorioso País Cazaquistão Viaja à América', 2006, 'comedia', 'live_action', ['leve'], ['critica_social', 'aventura'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-bad-boys-ii', 'Os Bad Boys II', 2003, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-laco-de-amor', 'Um Laço de Amor', 2017, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('a-favorita', 'A Favorita', 2018, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('na-mira-do-chefe', 'Na Mira do Chefe', 2008, 'comedia', 'live_action', ['reflexiva', 'leve'], ['emocional', 'critica_social'], 'moderado', sim, ['humor', 'critica_social', 'comedia_social']).
filme('sonic-2-o-filme', 'Sonic 2: O Filme', 2022, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-parto-de-viagem', 'Um Parto de Viagem', 2010, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-hora-do-rush', 'A Hora do Rush', 1998, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('hook-a-volta-do-capitao-gancho', 'Hook: A Volta do Capitão Gancho', 1991, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('caes-de-guerra', 'Cães de Guerra', 2016, 'comedia', 'live_action', ['leve'], ['critica_social'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('a-escolha-perfeita-2', 'A Escolha Perfeita 2', 2015, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('17-outra-vez', '17 Outra Vez', 2009, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('queime-depois-de-ler', 'Queime Depois de Ler', 2008, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', sim, ['humor', 'critica_social', 'comedia_social']).
filme('todo-mundo-em-panico-2', 'Todo Mundo em Pânico 2', 2001, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('desventuras-em-serie', 'Desventuras em Série', 2004, 'comedia', 'live_action', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('ghostbusters-mais-alem', 'Ghostbusters: Mais Além', 2021, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('os-excentricos-tenenbaums', 'Os Excêntricos Tenenbaums', 2001, 'comedia', 'live_action', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('a-familia-addams', 'A Família Addams', 1991, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('medo-e-delirio', 'Medo e Delírio', 1998, 'comedia', 'live_action', ['reflexiva'], ['critica_social', 'aventura'], 'moderado', sim, ['critica_social', 'comedia_social']).
filme('feito-na-america', 'Feito na América', 2017, 'comedia', 'live_action', ['leve', 'emocional'], ['critica_social'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_emocional']).
filme('esquadrao-classe-a', 'Esquadrão Classe A', 2010, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-vida-de-brian', 'A Vida de Brian', 1979, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('zoolander', 'Zoolander', 2001, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('mary-poppins', 'Mary Poppins', 1964, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('batman-o-cavaleiro-das-trevas', 'Batman: O Cavaleiro das Trevas', 2008, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', sim, ['critica_social', 'acao_aventura']).
filme('o-senhor-dos-aneis-a-sociedade-do-anel', 'O Senhor dos Anéis: A Sociedade do Anel', 2001, 'acao', 'live_action', ['tensa'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-senhor-dos-aneis-o-retorno-do-rei', 'O Senhor dos Anéis: O Retorno do Rei', 2003, 'acao', 'live_action', ['tensa'], ['emocional', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('batman-o-cavaleiro-das-trevas-ressurge', 'Batman: O Cavaleiro das Trevas Ressurge', 2012, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('o-senhor-dos-aneis-as-duas-torres', 'O Senhor dos Anéis: As Duas Torres', 2002, 'acao', 'live_action', ['tensa'], ['emocional', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('doutor-estranho', 'Doutor Estranho', 2016, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('batman-begins', 'Batman Begins', 2005, 'acao', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('piratas-do-caribe-a-maldicao-do-perola-negra', 'Piratas do Caribe: A Maldição do Pérola Negra', 2003, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['acao_aventura']).
filme('thor', 'Thor', 2011, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('esquadrao-suicida', 'Esquadrão Suicida', 2016, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('mulher-maravilha', 'Mulher-Maravilha', 2017, 'acao', 'live_action', ['emocional', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-hobbit-uma-jornada-inesperada', 'O Hobbit: Uma Jornada Inesperada', 2012, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('batman-vs-superman-a-origem-da-justica', 'Batman vs Superman: A Origem da Justiça', 2016, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('thor-o-mundo-sombrio', 'Thor: O Mundo Sombrio', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('dunkirk', 'Dunkirk', 2017, 'acao', 'live_action', ['tensa'], ['emocional', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('piratas-do-caribe-o-bau-da-morte', 'Piratas do Caribe: O Baú da Morte', 2006, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-profissional', 'O Profissional', 1994, 'acao', 'live_action', ['emocional', 'tensa'], ['emocional', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_espionagem']).
filme('piratas-do-caribe-no-fim-do-mundo', 'Piratas do Caribe: No Fim do Mundo', 2007, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-hobbit-a-batalha-dos-cinco-exercitos', 'O Hobbit: A Batalha dos Cinco Exércitos', 2014, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('kill-bill-volume-2', 'Kill Bill: Volume 2', 2004, 'acao', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'investigacao'], 'rapido', sim, ['acao_perseguicao']).
filme('piratas-do-caribe-navegando-em-aguas-misteriosas', 'Piratas do Caribe: Navegando em Águas Misteriosas', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('aquaman', 'Aquaman', 2018, 'acao', 'live_action', ['tensa', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('300', '300', 2007, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sherlock-holmes', 'Sherlock Holmes', 2009, 'acao', 'live_action', ['reflexiva'], ['investigacao', 'aventura'], 'rapido', sim, ['acao_perseguicao']).
filme('john-wick-um-novo-dia-para-matar', 'John Wick: Um Novo Dia para Matar', 2017, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('o-hobbit-a-desolacao-de-smaug', 'O Hobbit: A Desolação de Smaug', 2013, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sniper-americano', 'Sniper Americano', 2014, 'acao', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('scarface', 'Scarface', 1983, 'acao', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('coracoes-de-ferro', 'Corações de Ferro', 2014, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('piratas-do-caribe-a-vinganca-de-salazar', 'Piratas do Caribe: A Vingança de Salazar', 2017, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('kick-ass-quebrando-tudo', 'Kick-Ass: Quebrando Tudo', 2010, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('john-wick-3-parabellum', 'John Wick 3: Parabellum', 2019, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('troia', 'Tróia', 2004, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('007-contra-spectre', '007 Contra Spectre', 2015, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('velozes-furiosos-7', 'Velozes & Furiosos 7', 2015, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('indiana-jones-e-a-ultima-cruzada', 'Indiana Jones e a Última Cruzada', 1989, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('velozes-furiosos-6', 'Velozes & Furiosos 6', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('kong-a-ilha-da-caveira', 'Kong: A Ilha da Caveira', 2017, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('velozes-e-furiosos', 'Velozes e Furiosos', 2001, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('liga-da-justica-de-zack-snyder', 'Liga da Justiça de Zack Snyder', 2021, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sherlock-holmes-o-jogo-de-sombras', 'Sherlock Holmes: O Jogo de Sombras', 2011, 'acao', 'live_action', ['reflexiva'], ['aventura', 'investigacao'], 'rapido', sim, ['acao_perseguicao']).
filme('missao-impossivel-protocolo-fantasma', 'Missão: Impossível - Protocolo Fantasma', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('doutor-estranho-no-multiverso-da-loucura', 'Doutor Estranho no Multiverso da Loucura', 2022, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('velozes-furiosos-8', 'Velozes & Furiosos 8', 2017, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('aves-de-rapina-arlequina-e-sua-emancipacao-fantabulosa', 'Aves de Rapina: Arlequina e sua Emancipação Fantabulosa', 2020, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('shang-chi-e-a-lenda-dos-dez-aneis', 'Shang-Chi e a Lenda dos Dez Anéis', 2021, 'acao', 'live_action', ['emocional', 'tensa'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('hancock', 'Hancock', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['acao_aventura']).
filme('a-mumia-1999', 'A Múmia', 1999, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('indiana-jones-e-o-templo-da-perdicao', 'Indiana Jones e o Templo da Perdição', 1984, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sicario-terra-de-ninguem', 'Sicario: Terra de Ninguém', 2015, 'acao', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('missao-impossivel-nacao-secreta', 'Missão: Impossível - Nação Secreta', 2015, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('ford-vs-ferrari', 'Ford vs Ferrari', 2019, 'acao', 'live_action', ['emocional', 'tensa'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('indiana-jones-e-o-reino-da-caveira-de-cristal', 'Indiana Jones e o Reino da Caveira de Cristal', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('xxx-reativado', 'xXx: Reativado', 2017, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('mulher-maravilha-1984', 'Mulher-Maravilha 1984', 2020, 'acao', 'live_action', ['emocional', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('terremoto-a-falha-de-san-andreas', 'Terremoto: A Falha de San Andreas', 2015, 'acao', 'live_action', ['leve'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('bad-boys-para-sempre', 'Bad Boys Para Sempre', 2020, 'acao', 'live_action', ['leve', 'tensa'], ['investigacao', 'aventura'], 'rapido', sim, ['acao_perseguicao']).
filme('batman', 'Batman', 1989, 'acao', 'live_action', ['tensa'], ['investigacao'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('anonimo', 'Anônimo', 2021, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('007-quantum-of-solace', '007: Quantum of Solace', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('fogo-contra-fogo', 'Fogo Contra Fogo', 1995, 'acao', 'live_action', ['tensa'], ['investigacao', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('king-kong', 'King Kong', 2005, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-ultimato-bourne', 'O Ultimato Bourne', 2007, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_espionagem']).
filme('diamante-de-sangue', 'Diamante de Sangue', 2006, 'acao', 'live_action', ['tensa', 'emocional'], ['critica_social', 'emocional'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('tomb-raider-a-origem', 'Tomb Raider: A Origem', 2018, 'acao', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('os-mercenarios', 'Os Mercenários', 2010, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('a-supremacia-bourne', 'A Supremacia Bourne', 2004, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_espionagem']).
filme('john-wick-4-baba-yaga', 'John Wick 4: Baba Yaga', 2023, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('velozes-furiosos', '+ Velozes + Furiosos', 2003, 'acao', 'live_action', ['leve'], ['aventura', 'investigacao'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('rush-no-limite-da-emocao', 'Rush: No Limite da Emoção', 2013, 'acao', 'live_action', ['tensa'], ['critica_social', 'emocional'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('velozes-e-furiosos-4', 'Velozes e Furiosos 4', 2009, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-retorno-da-mumia', 'O Retorno da Múmia', 2001, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('velozes-e-furiosos-desafio-em-toquio', 'Velozes e Furiosos: Desafio em Tóquio', 2006, 'acao', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('jack-reacher-o-ultimo-tiro', 'Jack Reacher: O Último Tiro', 2012, 'acao', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('missao-impossivel-3', 'Missão: Impossível 3', 2006, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('velozes-furiosos-9', 'Velozes & Furiosos 9', 2021, 'acao', 'live_action', ['tensa', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('missao-impossivel-2', 'Missão: Impossível 2', 2000, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('o-ultimo-samurai', 'O Último Samurai', 2003, 'acao', 'live_action', ['tensa'], ['emocional', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-procurado', 'O Procurado', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['acao_espionagem']).
filme('capitao-phillips', 'Capitão Phillips', 2013, 'acao', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', sim, ['critica_social', 'acao_aventura']).
filme('hellboy', 'Hellboy', 2004, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('warcraft-o-primeiro-encontro-de-dois-mundos', 'Warcraft - O Primeiro Encontro de Dois Mundos', 2016, 'acao', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('pokemon-detetive-pikachu', 'Pokémon: Detetive Pikachu', 2019, 'acao', 'live_action', ['leve'], ['aventura', 'emocional'], 'moderado', sim, ['acao_aventura']).
filme('007-sem-tempo-para-morrer', '007: Sem Tempo para Morrer', 2021, 'acao', 'live_action', ['tensa', 'emocional'], ['investigacao', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('os-mercenarios-2', 'Os Mercenários 2', 2012, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('batman-o-retorno', 'Batman: O Retorno', 1992, 'acao', 'live_action', ['leve'], ['critica_social', 'aventura'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('principe-da-persia-as-areias-do-tempo', 'Príncipe da Pérsia: As Areias do Tempo', 2010, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('busca-implacavel-2', 'Busca Implacável 2', 2012, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('uncharted-fora-do-mapa', 'Uncharted: Fora do Mapa', 2022, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('invasao-a-casa-branca', 'Invasão à Casa Branca', 2013, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('rambo-programado-para-matar', 'Rambo: Programado Para Matar', 1982, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('mulan-2020', 'Mulan', 2020, 'acao', 'live_action', ['emocional', 'tensa'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('300-a-ascensao-do-imperio', '300: A Ascensão do Império', 2014, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('velocidade-maxima', 'Velocidade Máxima', 1994, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('a-lenda-do-tesouro-perdido', 'A Lenda do Tesouro Perdido', 2004, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('mortal-kombat', 'Mortal Kombat', 2021, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('dia-de-treinamento', 'Dia de Treinamento', 2001, 'acao', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('duro-de-matar-a-vinganca', 'Duro de Matar - A Vingança', 1995, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('furia-de-titas', 'Fúria de Titãs', 2010, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('duro-de-matar-um-bom-dia-para-morrer', 'Duro de Matar: Um Bom Dia para Morrer', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('anjos-da-noite', 'Anjos da Noite', 2003, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('atomica', 'Atômica', 2017, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', sim, ['acao_espionagem']).
filme('kick-ass-2', 'Kick-Ass 2', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('karate-kid', 'Karate Kid', 2010, 'acao', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('clube-da-luta', 'Clube da Luta', 1999, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'rapido', sim, ['reviravolta', 'sombrio', 'ritmo_intenso', 'psicologico', 'critica_social', 'suspense_psicologico']).
filme('coringa', 'Coringa', 2019, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', sim, ['reviravolta', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('bastardos-inglorios', 'Bastardos Inglórios', 2009, 'suspense', 'live_action', ['sombria', 'tensa'], ['critica_social'], 'rapido', sim, ['reviravolta', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_psicologico']).
filme('o-jogo-da-imitacao', 'O Jogo da Imitação', 2014, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_enigmatico']).
filme('whiplash-em-busca-da-perfeicao', 'Whiplash: Em Busca da Perfeição', 2014, 'suspense', 'live_action', ['tensa'], ['psicologica', 'critica_social'], 'rapido', sim, ['reviravolta', 'ritmo_intenso', 'psicologico', 'critica_social', 'suspense_psicologico']).
filme('truque-de-mestre', 'Truque de Mestre', 2013, 'suspense', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'ritmo_intenso', 'suspense_enigmatico']).
filme('amnesia', 'Amnésia', 2000, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['psicologica', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'psicologico', 'suspense_psicologico']).
filme('caes-de-aluguel', 'Cães de Aluguel', 1992, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('os-oito-odiados', 'Os Oito Odiados', 2015, 'suspense', 'live_action', ['sombria', 'tensa'], ['critica_social', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('drive', 'Drive', 2011, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'lento', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('onde-os-fracos-nao-tem-vez', 'Onde os Fracos Não Têm Vez', 2007, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'lento', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('donnie-darko', 'Donnie Darko', 2001, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', sim, ['reviravolta', 'sombrio', 'psicologico', 'critica_social', 'suspense_psicologico']).
filme('onze-homens-e-um-segredo', 'Onze Homens e um Segredo', 2001, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('psicopata-americano', 'Psicopata Americano', 2000, 'suspense', 'live_action', ['sombria'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_investigativo']).
filme('batman-2022', 'Batman', 2022, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('os-suspeitos', 'Os Suspeitos', 1995, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'ritmo_intenso', 'suspense_investigativo']).
filme('truque-de-mestre-o-2-ato', 'Truque de Mestre: O 2° Ato', 2016, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('assassinato-no-expresso-do-oriente', 'Assassinato no Expresso do Oriente', 2017, 'suspense', 'live_action', ['sombria'], ['investigacao', 'misterio'], 'moderado', nao, ['investigativo', 'misterio_complexo', 'sombrio', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-codigo-da-vinci', 'O Código da Vinci', 2006, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['misterio_complexo', 'ritmo_intenso', 'sem_reviravolta', 'suspense_enigmatico']).
filme('corpo-fechado', 'Corpo Fechado', 2000, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('fargo-uma-comedia-de-erros', 'Fargo: Uma Comédia de Erros', 1996, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('argo', 'Argo', 2012, 'suspense', 'live_action', ['tensa'], ['critica_social', 'misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('sin-city-a-cidade-do-pecado', 'Sin City: A Cidade do Pecado', 2005, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('animais-noturnos', 'Animais Noturnos', 2016, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('127-horas', '127 Horas', 2010, 'suspense', 'live_action', ['tensa'], ['psicologica', 'critica_social'], 'moderado', nao, ['psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('doze-homens-e-outro-segredo', 'Doze Homens e Outro Segredo', 2004, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('millennium-os-homens-que-nao-amavam-as-mulheres', 'Millennium: Os Homens Que Não Amavam as Mulheres', 2011, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('sobre-meninos-e-lobos', 'Sobre Meninos e Lobos', 2003, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_investigativo']).
filme('vidas-em-jogo', 'Vidas em Jogo', 1997, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'psicologico', 'suspense_psicologico']).
filme('o-contador', 'O Contador', 2016, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('anjos-e-demonios', 'Anjos e Demônios', 2009, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'suspense_enigmatico']).
filme('ponte-dos-espioes', 'Ponte dos Espiões', 2015, 'suspense', 'live_action', ['tensa'], ['misterio', 'critica_social'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('de-olhos-bem-fechados', 'De Olhos Bem Fechados', 1999, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'psicologica'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_enigmatico']).
filme('cidade-dos-sonhos', 'Cidade dos Sonhos', 2001, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'psicologica'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_enigmatico']).
filme('jackie-brown', 'Jackie Brown', 1997, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('treze-homens-e-um-novo-segredo', 'Treze Homens e um Novo Segredo', 2007, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('o-poderoso-chefao-parte-iii', 'O Poderoso Chefão: Parte III', 1990, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('nerve-um-jogo-sem-regras', 'Nerve - Um Jogo Sem Regras', 2016, 'suspense', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'rapido', nao, ['investigativo', 'misterio_complexo', 'ritmo_intenso', 'sem_reviravolta', 'suspense_investigativo']).
filme('enola-holmes', 'Enola Holmes', 2020, 'suspense', 'live_action', ['leve'], ['investigacao', 'misterio'], 'rapido', nao, ['investigativo', 'misterio_complexo', 'ritmo_intenso', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-impossivel', 'O Impossível', 2012, 'suspense', 'live_action', ['tensa', 'leve'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('inferno', 'Inferno', 2016, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['misterio_complexo', 'ritmo_intenso', 'sem_reviravolta', 'suspense_enigmatico']).
filme('colateral', 'Colateral', 2004, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('operacao-red-sparrow', 'Operação Red Sparrow', 2018, 'suspense', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'suspense_enigmatico']).
filme('guerra-ao-terror', 'Guerra ao Terror', 2008, 'suspense', 'live_action', ['tensa'], ['critica_social', 'psicologica'], 'rapido', nao, ['ritmo_intenso', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('os-intocaveis', 'Os Intocáveis', 1987, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('infiltrado', 'Infiltrado', 2021, 'suspense', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('cidadao-kane', 'Cidadão Kane', 1941, 'suspense', 'live_action', ['reflexiva'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('terra-selvagem', 'Terra Selvagem', 2017, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'lento', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('el-camino-a-breaking-bad-film', 'El Camino: A Breaking Bad Film', 2019, 'suspense', 'live_action', ['tensa', 'leve'], ['investigacao', 'critica_social'], 'moderado', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('atracao-perigosa', 'Atração Perigosa', 2010, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('codigo-de-conduta', 'Código de Conduta', 2009, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('los-angeles-cidade-proibida', 'Los Angeles: Cidade Proibida', 1997, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('joias-brutas', 'Joias Brutas', 2019, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'rapido', nao, ['ritmo_intenso', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('o-senhor-das-armas', 'O Senhor das Armas', 2005, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['critica_social', 'investigacao'], 'rapido', nao, ['investigativo', 'ritmo_intenso', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-quarto-do-panico', 'O Quarto do Pânico', 2002, 'suspense', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'psicologico', 'suspense_investigativo']).
filme('insonia', 'Insônia', 2002, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_investigativo']).
filme('louca-obsessao', 'Louca Obsessão', 1990, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', sim, ['reviravolta', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('hannibal', 'Hannibal', 2001, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'psicologica'], 'moderado', nao, ['investigativo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_investigativo']).
filme('a-hora-mais-escura', 'A Hora Mais Escura', 2012, 'suspense', 'live_action', ['tensa'], ['critica_social', 'misterio'], 'moderado', nao, ['misterio_complexo', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('a-queda', 'A Queda', 2022, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['reviravolta', 'psicologico', 'suspense_psicologico']).
filme('donnie-brasco', 'Donnie Brasco', 1997, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('scooby-doo-o-filme', 'Scooby-Doo: O Filme', 2002, 'suspense', 'live_action', ['leve'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('snowden-heroi-ou-traidor', 'Snowden: Herói ou Traidor', 2016, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'critica_social'], 'moderado', nao, ['misterio_complexo', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('a-vila', 'A Vila', 2004, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'critica_social'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'critica_social', 'suspense_enigmatico']).
filme('um-pequeno-favor', 'Um Pequeno Favor', 2018, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['investigativo', 'sem_reviravolta', 'suspense_investigativo']).
filme('intriga-internacional', 'Intriga Internacional', 1959, 'suspense', 'live_action', ['tensa'], ['misterio', 'psicologica'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'psicologico', 'suspense_enigmatico']).
filme('xeque-mate', 'Xeque-Mate', 2006, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('a-troca', 'A Troca', 2008, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'critica_social', 'suspense_investigativo']).
filme('identidade', 'Identidade', 2003, 'suspense', 'live_action', ['tensa'], ['psicologica', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'psicologico', 'suspense_psicologico']).
filme('o-sacrificio-do-cervo-sagrado', 'O Sacrifício do Cervo Sagrado', 2017, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('instinto-selvagem', 'Instinto Selvagem', 1992, 'suspense', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'psicologico', 'suspense_investigativo']).
filme('uma-batalha-apos-a-outra', 'Uma Batalha Após a Outra', 2025, 'suspense', 'live_action', ['tensa', 'leve'], ['critica_social'], 'rapido', nao, ['ritmo_intenso', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('um-crime-de-mestre', 'Um Crime de Mestre', 2007, 'suspense', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'psicologico', 'suspense_investigativo']).
filme('chinatown', 'Chinatown', 1974, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('lendas-do-crime', 'Lendas do Crime', 2015, 'suspense', 'live_action', ['sombria'], ['investigacao'], 'moderado', nao, ['investigativo', 'sombrio', 'sem_reviravolta', 'suspense_investigativo']).
filme('morte-no-nilo', 'Morte no Nilo', 2022, 'suspense', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_investigativo']).
filme('buscando', 'Buscando...', 2018, 'suspense', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'critica_social', 'suspense_investigativo']).
filme('por-um-fio', 'Por um Fio', 2003, 'suspense', 'live_action', ['tensa'], ['investigacao', 'psicologica'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'psicologico', 'suspense_investigativo']).
filme('medo-da-verdade', 'Medo da Verdade', 2007, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('a-vida-dos-outros', 'A Vida dos Outros', 2006, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'misterio'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('um-dia-de-furia', 'Um Dia de Fúria', 1993, 'suspense', 'live_action', ['sombria', 'tensa'], ['critica_social', 'psicologica'], 'moderado', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('operacao-valquiria', 'Operação Valquíria', 2008, 'suspense', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('paranoia', 'Paranóia', 2007, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('as-duas-faces-de-um-crime', 'As Duas Faces de um Crime', 1996, 'suspense', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'critica_social', 'suspense_investigativo']).
filme('minha-culpa', 'Minha Culpa', 2023, 'suspense', 'live_action', ['leve', 'tensa'], ['psicologica'], 'moderado', nao, ['psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('estrada-para-perdicao', 'Estrada para Perdição', 2002, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('sleepers-a-vinganca-adormecida', 'Sleepers: A Vingança Adormecida', 1996, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'moderado', nao, ['investigativo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('ave-cesar', 'Ave, César!', 2016, 'suspense', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('cabo-do-medo', 'Cabo do Medo', 1991, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('a-janela-secreta', 'A Janela Secreta', 2004, 'suspense', 'live_action', ['tensa'], ['psicologica', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'psicologico', 'suspense_psicologico']).
filme('o-colecionador-de-ossos', 'O Colecionador de Ossos', 1999, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'suspense_investigativo']).
filme('entre-irmaos', 'Entre Irmãos', 2009, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('maus-momentos-no-hotel-royale', 'Maus Momentos no Hotel Royale', 2018, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('veludo-azul', 'Veludo Azul', 1986, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'psicologica'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_enigmatico']).
filme('assassinos-por-natureza', 'Assassinos por Natureza', 1994, 'suspense', 'live_action', ['sombria'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('marcas-da-violencia', 'Marcas da Violência', 2005, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('relatos-selvagens', 'Relatos Selvagens', 2014, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', sim, ['reviravolta', 'sombrio', 'critica_social', 'suspense_psicologico']).
filme('django-livre', 'Django Livre', 2012, 'drama', 'live_action', ['sombria'], ['critica_social'], 'rapido', sim, ['critica_social', 'drama_critica_social']).
filme('o-poderoso-chefao', 'O Poderoso Chefão', 1972, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'rapido', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('a-espera-de-um-milagre', 'À Espera de um Milagre', 1999, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('o-regresso', 'O Regresso', 2015, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'filosofica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('bohemian-rhapsody', 'Bohemian Rhapsody', 2018, 'drama', 'live_action', ['emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('a-lista-de-schindler', 'A Lista de Schindler', 1993, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-resgate-do-soldado-ryan', 'O Resgate do Soldado Ryan', 1998, 'drama', 'live_action', ['sombria', 'emocional'], ['emocional', 'critica_social'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('prenda-me-se-for-capaz', 'Prenda-Me se For Capaz', 2002, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'rapido', sim, ['emocional', 'critica_social', 'drama_superacao']).
filme('ate-o-ultimo-homem', 'Até o Último Homem', 2016, 'drama', 'live_action', ['sombria', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('os-bons-companheiros', 'Os Bons Companheiros', 1990, 'drama', 'live_action', ['sombria'], ['critica_social'], 'rapido', sim, ['critica_social', 'drama_critica_social']).
filme('o-poderoso-chefao-parte-ii', 'O Poderoso Chefão: Parte II', 1974, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('genio-indomavel', 'Gênio Indomável', 1997, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'filosofica'], 'moderado', sim, ['emocional', 'drama_relacoes']).
filme('as-aventuras-de-pi', 'As Aventuras de Pi', 2012, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', sim, ['emocional', 'drama_superacao']).
filme('1917', '1917', 2019, 'drama', 'live_action', ['emocional', 'sombria'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('taxi-driver-motorista-de-taxi', 'Taxi Driver: Motorista de Táxi', 1976, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-rede-social', 'A Rede Social', 2010, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('beleza-americana', 'Beleza Americana', 1999, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('a-outra-historia-americana', 'A Outra História Americana', 1998, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('oppenheimer', 'Oppenheimer', 2023, 'drama', 'live_action', ['reflexiva', 'sombria'], ['psicologica', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('naufrago', 'Náufrago', 2000, 'drama', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_critica_social']).
filme('12-anos-de-escravidao', '12 Anos de Escravidão', 2013, 'drama', 'live_action', ['emocional', 'sombria'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('gran-torino', 'Gran Torino', 2008, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('um-estranho-no-ninho', 'Um Estranho no Ninho', 1975, 'drama', 'live_action', ['emocional', 'reflexiva'], ['psicologica', 'emocional'], 'moderado', sim, ['emocional', 'drama_critica_social']).
filme('nascido-para-matar', 'Nascido Para Matar', 1987, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'psicologica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-labirinto-do-fauno', 'O Labirinto do Fauno', 2006, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('coracao-valente', 'Coração Valente', 1995, 'drama', 'live_action', ['sombria'], ['emocional', 'critica_social'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('requiem-para-um-sonho', 'Réquiem para um Sonho', 2000, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social', 'psicologica'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('tres-anuncios-para-um-crime', 'Três Anúncios Para Um Crime', 2017, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'moderado', sim, ['critica_social', 'drama_critica_social']).
filme('trainspotting-sem-limites', 'Trainspotting: Sem Limites', 1996, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('menina-de-ouro', 'Menina de Ouro', 2004, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'lento', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('12-homens-e-uma-sentenca', '12 Homens e uma Sentença', 1957, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('na-natureza-selvagem', 'Na Natureza Selvagem', 2007, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'filosofica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('o-rei-do-show', 'O Rei do Show', 2017, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-discurso-do-rei', 'O Discurso do Rei', 2010, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('apocalypse-now', 'Apocalypse Now', 1979, 'drama', 'live_action', ['sombria'], ['psicologica'], 'moderado', sim, ['drama_critica_social']).
filme('clube-de-compras-dallas', 'Clube de Compras Dallas', 2013, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('rocky-um-lutador', 'Rocky: Um Lutador', 1976, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('spotlight-segredos-revelados', 'Spotlight: Segredos Revelados', 2015, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social'], 'moderado', sim, ['emocional', 'critica_social', 'drama_superacao']).
filme('cidade-de-deus', 'Cidade de Deus', 2002, 'drama', 'live_action', ['sombria'], ['critica_social'], 'rapido', sim, ['critica_social', 'drama_critica_social']).
filme('branca-de-neve-e-o-cacador', 'Branca de Neve e o Caçador', 2012, 'drama', 'live_action', ['emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('infiltrado-na-klan', 'Infiltrado Na Klan', 2018, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('creed-nascido-para-lutar', 'Creed: Nascido para Lutar', 2015, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('8-mile-rua-das-ilusoes', '8 Mile: Rua das Ilusões', 2002, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('peixe-grande-e-suas-historias-maravilhosas', 'Peixe Grande e Suas Histórias Maravilhosas', 2003, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', sim, ['emocional', 'drama_relacoes']).
filme('trapaca', 'Trapaça', 2013, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', sim, ['critica_social', 'drama_critica_social']).
filme('sully-o-heroi-do-rio-hudson', 'Sully: O Herói do Rio Hudson', 2016, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-menino-do-pijama-listrado', 'O Menino do Pijama Listrado', 2008, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('a-invencao-de-hugo-cabret', 'A Invenção de Hugo Cabret', 2011, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('sangue-negro', 'Sangue Negro', 2007, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'filosofica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-irlandes', 'O Irlandês', 2019, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'psicologica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('historia-de-um-casamento', 'História de um Casamento', 2019, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('gangues-de-nova-york', 'Gangues de Nova York', 2002, 'drama', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('rain-man', 'Rain Man', 1988, 'drama', 'live_action', ['emocional', 'leve'], ['emocional', 'psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('sete-vidas', 'Sete Vidas', 2008, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('pearl-harbor', 'Pearl Harbor', 2001, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('um-sonho-possivel', 'Um Sonho Possível', 2009, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('cassino', 'Cassino', 1995, 'drama', 'live_action', ['sombria'], ['critica_social'], 'rapido', sim, ['critica_social', 'drama_critica_social']).
filme('noe', 'Noé', 2014, 'drama', 'live_action', ['sombria'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('conta-comigo', 'Conta Comigo', 1986, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-voo', 'O Voo', 2012, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-gangster', 'O Gângster', 2007, 'drama', 'live_action', ['sombria'], ['critica_social'], 'rapido', sim, ['critica_social', 'drama_critica_social']).
filme('era-uma-vez-na-america', 'Era Uma Vez na América', 1984, 'drama', 'live_action', ['reflexiva', 'sombria'], ['emocional', 'critica_social'], 'lento', sim, ['emocional', 'critica_social', 'drama_relacoes']).
filme('apollo-13-do-desastre-ao-triunfo', 'Apollo 13 - Do Desastre ao Triunfo', 1995, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('o-homem-que-mudou-o-jogo', 'O Homem Que Mudou o Jogo', 2011, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-aviador', 'O Aviador', 2004, 'drama', 'live_action', ['reflexiva', 'emocional'], ['psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('a-garota-dinamarquesa', 'A Garota Dinamarquesa', 2015, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('bravura-indomita', 'Bravura Indômita', 2010, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-primeiro-homem', 'O Primeiro Homem', 2018, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('os-miseraveis', 'Os Miseráveis', 2012, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-destino-de-uma-nacao', 'O Destino de uma Nação', 2017, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('boyhood-da-infancia-a-juventude', 'Boyhood: Da Infância à Juventude', 2014, 'drama', 'live_action', ['reflexiva'], ['filosofica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('fome-de-poder', 'Fome de Poder', 2016, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('ponte-para-terabitia', 'Ponte para Terabítia', 2007, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('a-mula', 'A Mula', 2018, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-paixao-de-cristo', 'A Paixão de Cristo', 2004, 'drama', 'live_action', ['sombria'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('evereste', 'Evereste', 2015, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('o-lugar-onde-tudo-termina', 'O Lugar Onde Tudo Termina', 2013, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('perfume-a-historia-de-um-assassino', 'Perfume: A História de um Assassino', 2006, 'drama', 'live_action', ['sombria'], ['psicologica'], 'moderado', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('quebrando-a-banca', 'Quebrando a Banca', 2008, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social', 'emocional'], 'rapido', sim, ['emocional', 'critica_social', 'drama_superacao']).
filme('a-felicidade-nao-se-compra', 'A Felicidade Não Se Compra', 1946, 'drama', 'live_action', ['emocional', 'leve'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('rocketman', 'Rocketman', 2019, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('um-olhar-do-paraiso', 'Um Olhar do Paraíso', 2009, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('era-uma-vez-no-oeste', 'Era uma Vez no Oeste', 1968, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'filosofica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-qualquer-custo', 'A Qualquer Custo', 2016, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('the-post-a-guerra-secreta', 'The Post: A Guerra Secreta', 2017, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('nada-de-novo-no-front', 'Nada de Novo no Front', 2022, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('rocky-ii-a-revanche', 'Rocky II: A Revanche', 1979, 'drama', 'live_action', ['leve'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('rocky-iv', 'Rocky IV', 1985, 'drama', 'live_action', ['leve'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('inimigos-publicos', 'Inimigos Públicos', 2009, 'drama', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('amadeus', 'Amadeus', 1984, 'drama', 'live_action', ['reflexiva', 'emocional'], ['psicologica', 'emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('touro-indomavel', 'Touro Indomável', 1980, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-vencedor', 'O Vencedor', 2010, 'drama', 'live_action', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('danca-com-lobos', 'Dança com Lobos', 1990, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('filadelfia', 'Filadélfia', 1993, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_critica_social']).
filme('o-odio', 'O Ódio', 1995, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'filosofica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('profissao-de-risco', 'Profissão de Risco', 2001, 'drama', 'live_action', ['emocional', 'leve'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('michael', 'Michael', 2026, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('rocky-iii-o-desafio-supremo', 'Rocky III: O Desafio Supremo', 1982, 'drama', 'live_action', ['sombria', 'emocional'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('perfeitos-desconhecidos', 'Perfeitos Desconhecidos', 2016, 'drama', 'live_action', ['reflexiva'], ['emocional', 'psicologica'], 'moderado', sim, ['emocional', 'drama_relacoes']).
filme('o-juiz', 'O Juiz', 2014, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('a-menina-que-roubava-livros', 'A Menina que Roubava Livros', 2013, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('aristogatas', 'Aristogatas', 1970, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('bee-movie-a-historia-de-uma-abelha', 'Bee Movie: A História de uma Abelha', 2007, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('dumbo', 'Dumbo', 1941, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('atlantis-o-reino-perdido', 'Atlantis: O Reino Perdido', 2001, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_aventura']).
filme('monstros-vs-alienigenas', 'Monstros vs Alienígenas', 2009, 'animacao', 'animacao', ['leve'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('robos', 'Robôs', 2005, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('akira', 'Akira', 1988, 'animacao', 'animacao', ['reflexiva', 'fantastica'], ['critica_social', 'filosofica'], 'moderado', nao, ['fantasia', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('spirit-o-corcel-indomavel', 'Spirit: O Corcel Indomável', 2002, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-sem-floresta', 'Os Sem-Floresta', 2006, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-fantasmas-de-scrooge', 'Os Fantasmas de Scrooge', 2009, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-era-do-gelo-o-big-bang', 'A Era do Gelo: O Big Bang', 2016, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('sing-2', 'Sing 2', 2021, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('formiguinhaz', 'FormiguinhaZ', 1998, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('alvin-e-os-esquilos', 'Alvin e os Esquilos', 2007, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('hotel-transilvania-3-ferias-monstruosas', 'Hotel Transilvânia 3: Férias Monstruosas', 2018, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('gato-de-botas', 'Gato de Botas', 2011, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('planeta-do-tesouro', 'Planeta do Tesouro', 2002, 'animacao', 'animacao', ['leve'], ['aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('o-rei-leao-ii-o-reino-de-simba', 'O Rei Leão II: O Reino de Simba', 1998, 'animacao', 'animacao', ['emocional', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('robin-hood', 'Robin Hood', 1973, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('os-pinguins-de-madagascar-o-filme', 'Os Pinguins de Madagascar - O Filme', 2014, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('o-grinch-2018', 'O Grinch', 2018, 'animacao', 'animacao', ['leve'], ['aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-casa-monstro', 'A Casa Monstro', 2006, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-principe-do-egito', 'O Príncipe do Egito', 1998, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('cada-um-na-sua-casa', 'Cada Um na Sua Casa', 2015, 'animacao', 'animacao', ['leve'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('space-jam-um-novo-legado', 'Space Jam: Um Novo Legado', 2021, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('o-galinho-chicken-little', 'O Galinho Chicken Little', 2005, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('os-croods-2-uma-nova-era', 'Os Croods 2: Uma Nova Era', 2020, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('o-caminho-para-el-dorado', 'O Caminho para El Dorado', 2000, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('minions-2-a-origem-de-gru', 'Minions 2: A Origem de Gru', 2022, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('por-agua-abaixo', 'Por Água Abaixo', 2006, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-espada-era-a-lei', 'A Espada Era a Lei', 1963, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('angry-birds-o-filme', 'Angry Birds: O Filme', 2016, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('ghost-in-the-shell-o-fantasma-do-futuro', 'Ghost in the Shell: O Fantasma do Futuro', 1995, 'animacao', 'animacao', ['reflexiva'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'animacao_fantasia']).
filme('os-smurfs', 'Os Smurfs', 2011, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('9-a-salvacao', '9 - A Salvação', 2009, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['filosofica'], 'moderado', nao, ['fantasia', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-lorax-em-busca-da-trufula-perdida', 'O Lorax: Em Busca da Trúfula Perdida', 2012, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('lightyear', 'Lightyear', 2022, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura'], 'rapido', sim, ['aventura', 'acolhedor', 'emocional', 'animacao_aventura']).
filme('kubo-e-as-cordas-magicas', 'Kubo e as Cordas Mágicas', 2016, 'animacao', 'animacao', ['reflexiva', 'fantastica'], ['emocional', 'aventura'], 'moderado', sim, ['fantasia', 'aventura', 'emocional', 'animacao_fantasia']).
filme('super-mario-galaxy-o-filme', 'Super Mario Galaxy: O Filme', 2026, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('trolls', 'Trolls', 2016, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('atlantis-o-retorno-de-milo', 'Atlantis: O Retorno de Milo', 2003, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('rio-2', 'Rio 2', 2014, 'animacao', 'animacao', ['leve'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('porco-rosso-o-ultimo-heroi-romantico', 'Porco Rosso: O Último Herói Romântico', 1992, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_aventura']).
filme('turbo', 'Turbo', 2013, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('frankenweenie', 'Frankenweenie', 2012, 'animacao', 'animacao', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('kung-fu-panda-4', 'Kung Fu Panda 4', 2024, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('zootopia-2', 'Zootopia 2', 2025, 'animacao', 'animacao', ['leve'], ['aventura', 'critica_social'], 'rapido', sim, ['aventura', 'acolhedor', 'critica_social', 'animacao_aventura']).
filme('horton-e-o-mundo-dos-quem', 'Horton e o Mundo dos Quem!', 2008, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('ta-chovendo-hamburguer-2', 'Tá Chovendo Hambúrguer 2', 2013, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('o-cao-e-a-raposa', 'O Cão e a Raposa', 1981, 'animacao', 'animacao', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-familia-mitchell-e-a-revolta-das-maquinas', 'A Família Mitchell e a Revolta das Máquinas', 2021, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('pinoquio-por-guillermo-del-toro', 'Pinóquio por Guillermo del Toro', 2022, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['emocional', 'filosofica'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('aladdin-o-retorno-de-jafar', 'Aladdin - O Retorno de Jafar', 1994, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('pets-a-vida-secreta-dos-bichos-2', 'Pets: A Vida Secreta dos Bichos 2', 2019, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('meu-malvado-favorito-4', 'Meu Malvado Favorito 4', 2024, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('perfect-blue', 'Perfect Blue', 1998, 'animacao', 'animacao', ['fantastica'], ['critica_social', 'filosofica'], 'moderado', sim, ['fantasia', 'critica_social', 'animacao_fantasia']).
filme('fantasia', 'Fantasia', 1940, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_fantasia']).
filme('emoji-o-filme', 'Emoji: O Filme', 2017, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('guerreiras-do-k-pop', 'Guerreiras do K-Pop', 2025, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('moana-2', 'Moana 2', 2024, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('bob-esponja-o-filme', 'Bob Esponja: O Filme', 2004, 'animacao', 'animacao', ['leve'], ['aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-mundo-dos-pequeninos', 'O Mundo dos Pequeninos', 2010, 'animacao', 'animacao', ['emocional', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-familia-do-futuro', 'A Família do Futuro', 2007, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('o-rei-leao-3-hakuna-matata', 'O Rei Leão 3: Hakuna Matata', 2004, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('wallace-gromit-a-batalha-dos-vegetais', 'Wallace & Gromit: A Batalha dos Vegetais', 2005, 'animacao', 'animacao', ['leve'], ['emocional', 'critica_social'], 'moderado', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_aventura']).
filme('alvin-e-os-esquilos-2', 'Alvin e os Esquilos 2', 2009, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('a-lenda-de-beowulf', 'A Lenda de Beowulf', 2007, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-touro-ferdinando', 'O Touro Ferdinando', 2017, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('flow', 'Flow', 2024, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['aventura', 'filosofica'], 'lento', nao, ['aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('hotel-transilvania-transformonstrao', 'Hotel Transilvânia: Transformonstrão', 2022, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('arthur-e-os-minimoys', 'Arthur e os Minimoys', 2006, 'animacao', 'animacao', ['fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('o-bicho-vai-pegar', 'O Bicho Vai Pegar', 2006, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('south-park-maior-melhor-e-sem-cortes', 'South Park: Maior, Melhor e Sem Cortes', 1999, 'animacao', 'animacao', ['leve'], ['critica_social'], 'moderado', nao, ['acolhedor', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('um-espiao-animal', 'Um Espião Animal', 2019, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('o-pequeno-principe', 'O Pequeno Príncipe', 2015, 'animacao', 'animacao', ['fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('festa-no-ceu', 'Festa no Céu', 2014, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('reino-escondido', 'Reino Escondido', 2013, 'animacao', 'animacao', ['fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('bob-esponja-o-incrivel-resgate', 'Bob Esponja: O Incrível Resgate', 2020, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('paranorman', 'ParaNorman', 2012, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('toy-story-5', 'Toy Story 5', 2026, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('em-busca-do-vale-encantado', 'Em Busca do Vale Encantado', 1988, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('ta-dando-onda', 'Tá Dando Onda', 2007, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('dinossauro', 'Dinossauro', 2000, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('mufasa-o-rei-leao', 'Mufasa: O Rei Leão', 2024, 'animacao', 'animacao', ['emocional', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('bernardo-e-bianca', 'Bernardo e Bianca', 1977, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-caras-malvados', 'Os Caras Malvados', 2022, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', sim, ['aventura', 'acolhedor', 'animacao_aventura']).
filme('o-poderoso-chefinho-2-negocios-da-familia', 'O Poderoso Chefinho 2: Negócios da Família', 2021, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('com-amor-van-gogh', 'Com Amor, Van Gogh', 2017, 'animacao', 'animacao', ['reflexiva'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'animacao_emocional']).
filme('tom-e-jerry-o-filme', 'Tom e Jerry: O Filme', 2021, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('as-aventuras-de-peabody-e-sherman', 'As Aventuras de Peabody e Sherman', 2014, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('bob-esponja-um-heroi-fora-d-agua', 'Bob Esponja: Um Herói Fora D\'Água', 2015, 'animacao', 'animacao', ['leve'], ['aventura'], 'moderado', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('cegonhas-a-historia-que-nao-te-contaram', 'Cegonhas: A História Que Não Te Contaram', 2016, 'animacao', 'animacao', ['leve'], ['emocional'], 'rapido', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('a-lenda-dos-guardioes', 'A Lenda dos Guardiões', 2010, 'animacao', 'animacao', ['fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('mulan-2-a-lenda-continua', 'Mulan 2: A Lenda Continua', 2004, 'animacao', 'animacao', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('a-familia-addams-2019', 'A Família Addams', 2019, 'animacao', 'animacao', ['leve', 'fantastica'], ['critica_social'], 'rapido', nao, ['fantasia', 'acolhedor', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('uma-aventura-lego-2', 'Uma Aventura LEGO 2', 2019, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('cara-de-um-focinho-de-outro', 'Cara de Um, Focinho de Outro', 2026, 'animacao', 'animacao', ['leve'], ['aventura', 'critica_social'], 'rapido', nao, ['aventura', 'acolhedor', 'critica_social', 'sem_reviravolta', 'animacao_aventura']).
filme('the-last-naruto-o-filme', 'The Last Naruto: O Filme', 2014, 'animacao', 'animacao', ['reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('peter-pan-de-volta-a-terra-do-nunca', 'Peter Pan: De Volta à Terra do Nunca', 2002, 'animacao', 'animacao', ['fantastica', 'leve'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('os-smurfs-2', 'Os Smurfs 2', 2013, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('alvin-e-os-esquilos-3', 'Alvin e os Esquilos 3', 2011, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('demon-slayer-kimetsu-no-yaiba-castelo-infinito', 'Demon Slayer: Kimetsu no Yaiba Castelo Infinito', 2025, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('mary-e-max-uma-amizade-diferente', 'Mary e Max: Uma Amizade Diferente', 2009, 'animacao', 'animacao', ['emocional', 'reflexiva'], ['emocional', 'filosofica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('patos', 'Patos!', 2023, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('trolls-2', 'Trolls 2', 2020, 'animacao', 'animacao', ['leve', 'fantastica'], ['aventura', 'critica_social'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'critica_social', 'sem_reviravolta', 'animacao_fantasia']).
filme('sinbad-a-lenda-dos-sete-mares', 'Sinbad - A Lenda dos Sete Mares', 2003, 'animacao', 'animacao', ['leve'], ['aventura'], 'rapido', nao, ['aventura', 'acolhedor', 'sem_reviravolta', 'animacao_aventura']).
filme('star-wars-a-guerra-dos-clones', 'Star Wars: A Guerra dos Clones', 2008, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_aventura']).
filme('como-magica', 'Como Mágica', 2026, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('persepolis', 'Persépolis', 2007, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'animacao_emocional']).
filme('balto', 'Balto', 1995, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('abominavel', 'Abominável', 2019, 'animacao', 'animacao', ['emocional', 'fantastica'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('cinco-centimetros-por-segundo', 'Cinco Centímetros por Segundo', 2007, 'animacao', 'animacao', ['reflexiva', 'emocional'], ['emocional'], 'lento', nao, ['emocional', 'sem_reviravolta', 'animacao_emocional']).
filme('planeta-51', 'Planeta 51', 2009, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional', 'aventura'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('nem-que-a-vaca-tussa', 'Nem Que a Vaca Tussa', 2004, 'animacao', 'animacao', ['leve'], ['emocional'], 'moderado', nao, ['acolhedor', 'emocional', 'sem_reviravolta', 'animacao_aventura']).
filme('luck', 'Luck', 2022, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura', 'emocional'], 'moderado', nao, ['fantasia', 'aventura', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('gnomeu-e-julieta', 'Gnomeu e Julieta', 2011, 'animacao', 'animacao', ['leve', 'fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'acolhedor', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('ron-bugado', 'Ron Bugado', 2021, 'animacao', 'animacao', ['leve', 'emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['acolhedor', 'emocional', 'critica_social', 'sem_reviravolta', 'animacao_emocional']).
filme('dragon-ball-z-o-renascimento-de-freeza', 'Dragon Ball Z: O Renascimento de Freeza', 2015, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_aventura']).
filme('return', 'スレイヤーズ RETURN', 1996, 'animacao', 'animacao', ['fantastica', 'leve'], ['aventura'], 'rapido', nao, ['fantasia', 'aventura', 'acolhedor', 'sem_reviravolta', 'animacao_fantasia']).
filme('liga-da-justica-ponto-de-ignicao', 'Liga da Justiça: Ponto de Ignição', 2013, 'animacao', 'animacao', ['emocional'], ['aventura', 'emocional'], 'rapido', sim, ['aventura', 'emocional', 'animacao_aventura']).
filme('o-homem-duplo', 'O Homem Duplo', 2006, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['critica_social', 'filosofica'], 'moderado', sim, ['fantasia', 'critica_social', 'animacao_fantasia']).
filme('a-bailarina', 'A Bailarina', 2016, 'animacao', 'animacao', ['fantastica'], ['emocional'], 'moderado', nao, ['fantasia', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('aladdin-e-os-40-ladroes', 'Aladdin e os 40 Ladrões', 1996, 'animacao', 'animacao', ['fantastica', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['fantasia', 'aventura', 'emocional', 'sem_reviravolta', 'animacao_fantasia']).
filme('deu-a-louca-na-chapeuzinho', 'Deu a Louca na Chapeuzinho', 2005, 'animacao', 'animacao', ['fantastica'], ['aventura'], 'moderado', nao, ['fantasia', 'aventura', 'sem_reviravolta', 'animacao_fantasia']).
filme('neon-genesis-evangelion-o-fim-do-evangelho', 'Neon Genesis Evangelion: O Fim do Evangelho', 1997, 'animacao', 'animacao', ['fantastica', 'reflexiva'], ['filosofica'], 'moderado', nao, ['fantasia', 'sem_reviravolta', 'animacao_fantasia']).
filme('blade-trinity', 'Blade Trinity', 2004, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('resident-evil-5-retribuicao', 'Resident Evil 5: Retribuição', 2012, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('anjos-da-noite-o-despertar', 'Anjos da Noite: O Despertar', 2012, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('garota-infernal', 'Garota Infernal', 2009, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('resident-evil-4-recomeco', 'Resident Evil 4: Recomeço', 2010, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('sorria', 'Sorria', 2022, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('panico-4', 'Pânico 4', 2011, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('a-primeira-noite-de-crime', 'A Primeira Noite de Crime', 2018, 'terror', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('a-cura', 'A Cura', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio', 'psicologica'], 'lento', sim, ['terror_psicologico', 'tensao_alta', 'construcao_lenta', 'reviravolta']).
filme('premonicao-5', 'Premonição 5', 2011, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('quando-as-luzes-se-apagam', 'Quando as Luzes se Apagam', 2016, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-hora-do-mal', 'A Hora do Mal', 2025, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'folk_horror']).
filme('verdade-ou-desafio', 'Verdade ou Desafio', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'folk_horror']).
filme('arraste-me-para-o-inferno', 'Arraste-me Para o Inferno', 2009, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-iv', 'Jogos Mortais IV', 2007, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('panico-3', 'Pânico 3', 2000, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('x-a-marca-da-morte', 'X: A Marca da Morte', 2022, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'folk_horror']).
filme('death-note', 'Death Note', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('megatubarao-2', 'Megatubarão 2', 2023, 'terror', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('nosferatu', 'Nosferatu', 2024, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio', 'psicologica'], 'lento', nao, ['terror_psicologico', 'tensao_alta', 'construcao_lenta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-que-fazemos-nas-sombras', 'O Que Fazemos nas Sombras', 2014, 'terror', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'folk_horror']).
filme('o-albergue', 'O Albergue', 2006, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('backrooms-um-nao-lugar', 'Backrooms: Um Não-Lugar', 2026, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'lento', nao, ['tensao_alta', 'construcao_lenta', 'sem_reviravolta', 'terror_investigativo']).
filme('goosebumps-monstros-e-arrepios', 'Goosebumps: Monstros e Arrepios', 2015, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('premonicao-4', 'Premonição 4', 2009, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-morte-do-demonio-a-ascensao', 'A Morte do Demônio: A Ascensão', 2023, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('noite-passada-em-soho', 'Noite Passada em Soho', 2021, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('jogos-mortais-jigsaw', 'Jogos Mortais: Jigsaw', 2017, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('panico-2022', 'Pânico', 2022, 'terror', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'rapido', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('frankenstein', 'Frankenstein', 2025, 'terror', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'lento', nao, ['terror_psicologico', 'construcao_lenta', 'critica_social', 'sem_reviravolta']).
filme('jogo-perigoso', 'Jogo Perigoso', 2017, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('demonio-de-neon', 'Demônio de Neon', 2016, 'terror', 'live_action', ['reflexiva', 'sombria'], ['misterio', 'psicologica'], 'lento', nao, ['terror_psicologico', 'construcao_lenta', 'sem_reviravolta', 'folk_horror']).
filme('boneco-do-mal', 'Boneco do Mal', 2016, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('a-baba', 'A Babá', 2017, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'folk_horror']).
filme('anjos-da-noite-guerras-de-sangue', 'Anjos da Noite: Guerras de Sangue', 2016, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('assim-na-terra-como-no-inferno', 'Assim na Terra Como no Inferno', 2014, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('planeta-terror', 'Planeta Terror', 2007, 'terror', 'live_action', ['sombria'], ['critica_social', 'psicologica'], 'rapido', nao, ['terror_psicologico', 'critica_social', 'sem_reviravolta']).
filme('annabelle-3-de-volta-para-casa', 'Annabelle 3: De Volta para Casa', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-v', 'Jogos Mortais V', 2008, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('a-cacada', 'A Caçada', 2020, 'terror', 'live_action', ['tensa'], ['critica_social'], 'rapido', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_psicologico']).
filme('os-novos-mutantes', 'Os Novos Mutantes', 2020, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('hellboy-2019', 'Hellboy', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('sobrenatural-a-origem', 'Sobrenatural: A Origem', 2015, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-mulher-de-preto', 'A Mulher de Preto', 2012, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-morte-te-da-parabens-2', 'A Morte Te Dá Parabéns 2', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'investigacao'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('o-ataque-dos-vermes-malditos', 'O Ataque dos Vermes Malditos', 1990, 'terror', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'folk_horror']).
filme('uma-noite-alucinante-3', 'Uma Noite Alucinante 3', 1992, 'terror', 'live_action', ['sombria'], ['psicologica'], 'rapido', nao, ['terror_psicologico', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-paradoxo-cloverfield', 'O Paradoxo Cloverfield', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('uma-noite-alucinante-2', 'Uma Noite Alucinante 2', 1987, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'rapido', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('ameaca-profunda', 'Ameaça Profunda', 2020, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('godzilla-minus-one', 'Godzilla Minus One', 2023, 'terror', 'live_action', ['tensa', 'reflexiva'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('noites-brutais', 'Noites Brutais', 2022, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', sim, ['tensao_alta', 'reviravolta', 'terror_psicologico']).
filme('abraham-lincoln-cacador-de-vampiros', 'Abraham Lincoln: Caçador de Vampiros', 2012, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('um-lugar-silencioso-dia-um', 'Um Lugar Silencioso: Dia Um', 2024, 'terror', 'live_action', ['tensa', 'reflexiva'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_psicologico']).
filme('resident-evil-6-o-capitulo-final', 'Resident Evil 6: O Capítulo Final', 2016, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta']).
filme('brightburn-filho-das-trevas', 'Brightburn - Filho das Trevas', 2019, 'terror', 'live_action', ['tensa', 'reflexiva'], ['psicologica'], 'rapido', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-vi', 'Jogos Mortais VI', 2009, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('amizade-desfeita', 'Amizade Desfeita', 2014, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('bata-antes-de-entrar', 'Bata Antes de Entrar', 2015, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('sexta-feira-13', 'Sexta-Feira 13', 1980, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('o-enigma-do-horizonte', 'O Enigma do Horizonte', 1997, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('brinquedo-assassino', 'Brinquedo Assassino', 1988, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('cemiterio-maldito', 'Cemitério Maldito', 2019, 'terror', 'live_action', ['reflexiva', 'tensa'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('viagem-maldita', 'Viagem Maldita', 2006, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('grave', 'Grave', 2017, 'terror', 'live_action', ['sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'sem_reviravolta']).
filme('o-ultimo-portal', 'O Último Portal', 1999, 'terror', 'live_action', ['sombria', 'tensa'], ['misterio'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('poltergeist-o-fenomeno', 'Poltergeist: O Fenômeno', 1982, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-casa-de-cera', 'A Casa de Cera', 2005, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('predadores-assassinos', 'Predadores Assassinos', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('alien-vs-predador-2', 'Alien vs. Predador 2', 2007, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('olhos-famintos', 'Olhos Famintos', 2001, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('eu-sei-o-que-voces-fizeram-no-verao-passado', 'Eu Sei o Que Vocês Fizeram no Verão Passado', 1997, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('os-fantasmas-ainda-se-divertem-beetlejuice-beetlejuice', 'Os Fantasmas Ainda se Divertem: Beetlejuice Beetlejuice', 2024, 'terror', 'live_action', ['reflexiva'], ['misterio'], 'rapido', nao, ['sem_reviravolta', 'terror_sobrenatural']).
filme('jogos-mortais-o-final', 'Jogos Mortais: O Final', 2010, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('panico-vi', 'Pânico VI', 2023, 'terror', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'rapido', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('deixa-ela-entrar', 'Deixa Ela Entrar', 2008, 'terror', 'live_action', ['reflexiva', 'sombria'], ['investigacao', 'critica_social'], 'lento', nao, ['construcao_lenta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-coisa', 'A Coisa', 2011, 'terror', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('tucker-e-dale-contra-o-mal', 'Tucker e Dale Contra o Mal', 2010, 'terror', 'live_action', ['sombria', 'tensa'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('a-garota-da-capa-vermelha', 'A Garota da Capa Vermelha', 2011, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-grito', 'O Grito', 2004, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-exorcista-do-papa', 'O Exorcista do Papa', 2023, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('sobrenatural-a-ultima-chave', 'Sobrenatural: A Última Chave', 2018, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-espelho', 'O Espelho', 2014, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('the-rocky-horror-picture-show', 'The Rocky Horror Picture Show', 1975, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('suspiria', 'Suspiria', 1977, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio', 'investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('operacao-overlord', 'Operação Overlord', 2018, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('batem-a-porta', 'Batem à Porta', 2023, 'terror', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('premonicao-6-lacos-de-sangue', 'Premonição 6: Laços de Sangue', 2025, 'terror', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('eu-vi-o-diabo', 'Eu Vi o Diabo', 2010, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('demonio', 'Demônio', 2010, 'terror', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_sobrenatural']).
filme('30-dias-de-noite', '30 Dias de Noite', 2007, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('triangulo-do-medo', 'Triângulo do Medo', 2009, 'terror', 'live_action', ['tensa'], ['misterio', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('martires', 'Mártires', 2008, 'terror', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('a-casa-que-jack-construiu', 'A Casa Que Jack Construiu', 2018, 'terror', 'live_action', ['reflexiva'], ['psicologica', 'investigacao'], 'moderado', nao, ['terror_psicologico', 'sem_reviravolta']).
filme('o-exorcismo-de-emily-rose', 'O Exorcismo de Emily Rose', 2005, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('panico-na-floresta', 'Pânico na Floresta', 2003, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('a-morte-lhe-cai-bem', 'A Morte lhe Cai Bem', 1992, 'terror', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'terror_sobrenatural']).
filme('exterminio-a-evolucao', 'Extermínio: A Evolução', 2025, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'folk_horror']).
filme('aterrorizante', 'Aterrorizante', 2018, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('nao-se-preocupe-querida', 'Não Se Preocupe, Querida', 2022, 'terror', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'critica_social'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'critica_social', 'terror_psicologico']).
filme('do-inferno', 'Do Inferno', 2001, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['tensao_alta', 'reviravolta', 'terror_investigativo']).
filme('armadilha', 'Armadilha', 2024, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('sala-verde', 'Sala Verde', 2016, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'critica_social']).
filme('hellraiser-renascido-do-inferno', 'Hellraiser: Renascido do Inferno', 1987, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-massacre-da-serra-eletrica-2003', 'O Massacre da Serra Elétrica', 2003, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('halloween-kills-o-terror-continua', 'Halloween Kills: O Terror Continua', 2021, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'rapido', nao, ['tensao_alta', 'critica_social', 'sem_reviravolta', 'terror_psicologico']).
filme('herege', 'Herege', 2024, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica', 'critica_social'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta', 'critica_social']).
filme('gremlins-2-a-nova-geracao', 'Gremlins 2: A Nova Geração', 1990, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('longlegs-vinculo-mortal', 'Longlegs - Vínculo Mortal', 2024, 'terror', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'lento', sim, ['tensao_alta', 'construcao_lenta', 'reviravolta', 'terror_investigativo']).
filme('fuja', 'Fuja', 2020, 'terror', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['terror_psicologico', 'tensao_alta', 'reviravolta']).
filme('a-hora-do-pesadelo-2010', 'A Hora do Pesadelo', 2010, 'terror', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('freddy-vs-jason', 'Freddy vs. Jason', 2003, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('o-convite', 'O Convite', 2016, 'terror', 'live_action', ['tensa'], ['psicologica'], 'lento', sim, ['terror_psicologico', 'tensao_alta', 'construcao_lenta', 'reviravolta']).
filme('sexta-feira-13-2009', 'Sexta-Feira 13', 2009, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('1922', '1922', 2017, 'terror', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('legiao', 'Legião', 2010, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('os-mortos-nao-morrem', 'Os Mortos Não Morrem', 2019, 'terror', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'terror_investigativo']).
filme('historias-assustadoras-para-contar-no-escuro', 'Histórias Assustadoras para Contar no Escuro', 2019, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta', 'terror_sobrenatural']).
filme('anticristo', 'Anticristo', 2009, 'terror', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'misterio'], 'lento', nao, ['terror_psicologico', 'construcao_lenta', 'sem_reviravolta']).
filme('o-homem-nas-trevas-2', 'O Homem nas Trevas 2', 2021, 'terror', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'rapido', nao, ['terror_psicologico', 'tensao_alta', 'sem_reviravolta']).
filme('resident-evil-bem-vindo-a-raccoon-city', 'Resident Evil: Bem-Vindo a Raccoon City', 2021, 'terror', 'live_action', ['tensa', 'sombria'], ['misterio'], 'rapido', nao, ['tensao_alta', 'sem_reviravolta', 'terror_investigativo']).
filme('anaconda', 'Anaconda', 1997, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('medo-profundo', 'Medo Profundo', 2017, 'terror', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['tensao_alta', 'sem_reviravolta']).
filme('a-noite-dos-mortos-vivos', 'A Noite dos Mortos-Vivos', 1968, 'terror', 'live_action', ['tensa', 'sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['terror_psicologico', 'tensao_alta', 'critica_social', 'sem_reviravolta']).
filme('eraserhead', 'Eraserhead', 1977, 'terror', 'live_action', ['sombria'], ['misterio', 'psicologica'], 'moderado', sim, ['terror_psicologico', 'reviravolta']).
filme('planeta-dos-macacos-a-guerra', 'Planeta dos Macacos: A Guerra', 2017, 'ficcao_cientifica', 'live_action', ['emocional', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('alem-da-escuridao-star-trek', 'Além da Escuridão - Star Trek', 2013, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('nao-olhe-para-cima', 'Não Olhe para Cima', 2021, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_filosofica']).
filme('deadpool-wolverine', 'Deadpool & Wolverine', 2024, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('guerra-dos-mundos', 'Guerra dos Mundos', 2005, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('gigantes-de-aco', 'Gigantes de Aço', 2011, 'ficcao_cientifica', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-predador', 'O Predador', 1987, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('han-solo-uma-historia-star-wars', 'Han Solo: Uma História Star Wars', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('o-mundo-perdido-jurassic-park', 'O Mundo Perdido: Jurassic Park', 1997, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('contra-o-tempo', 'Contra o Tempo', 2011, 'ficcao_cientifica', 'live_action', ['tensa'], ['filosofica', 'misterio'], 'rapido', sim, ['filosofico', 'reviravolta', 'ficcao_tecnologia']).
filme('eternos', 'Eternos', 2021, 'ficcao_cientifica', 'live_action', ['reflexiva', 'fantastica'], ['filosofica', 'aventura'], 'moderado', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_aventura']).
filme('os-12-macacos', 'Os 12 Macacos', 1995, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('transformers-a-vinganca-dos-derrotados', 'Transformers: A Vingança dos Derrotados', 2009, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('vidro', 'Vidro', 2019, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'moderado', sim, ['aventura', 'reviravolta', 'ficcao_filosofica']).
filme('o-exterminador-do-futuro-genesis', 'O Exterminador do Futuro: Gênesis', 2015, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('transformers-o-lado-oculto-da-lua', 'Transformers: O Lado Oculto da Lua', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-dia-depois-de-amanha', 'O Dia Depois de Amanhã', 2004, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('guardioes-da-galaxia-vol-3', 'Guardiões da Galáxia: Vol. 3', 2023, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('transformers-a-era-da-extincao', 'Transformers: A Era da Extinção', 2014, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('duna-parte-dois', 'Duna: Parte Dois', 2024, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'filosofica'], 'moderado', nao, ['filosofico', 'aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_aventura']).
filme('armageddon', 'Armageddon', 1998, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('devoradores-de-estrelas', 'Devoradores de Estrelas', 2026, 'ficcao_cientifica', 'live_action', ['emocional', 'reflexiva'], ['misterio', 'aventura'], 'moderado', sim, ['aventura', 'reflexivo', 'reviravolta', 'ficcao_aventura']).
filme('a-vigilante-do-amanha-ghost-in-the-shell', 'A Vigilante do Amanhã: Ghost in the Shell', 2017, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('chappie', 'Chappie', 2015, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('efeito-borboleta', 'Efeito Borboleta', 2004, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['psicologica'], 'moderado', sim, ['reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('quarteto-fantastico-e-o-surfista-prateado', 'Quarteto Fantástico e o Surfista Prateado', 2007, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('tudo-em-todo-o-lugar-ao-mesmo-tempo', 'Tudo em Todo o Lugar ao Mesmo Tempo', 2022, 'ficcao_cientifica', 'live_action', ['fantastica', 'emocional'], ['filosofica', 'aventura'], 'rapido', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_filosofica']).
filme('maze-runner-a-cura-mortal', 'Maze Runner: A Cura Mortal', 2018, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('valerian-e-a-cidade-dos-mil-planetas', 'Valerian e a Cidade dos Mil Planetas', 2017, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('assassin-s-creed', 'Assassin\'s Creed', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('pixels', 'Pixels', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('tron-o-legado', 'Tron: O Legado', 2010, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('cloverfield-monstro', 'Cloverfield: Monstro', 2008, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('jurassic-park-3', 'Jurassic Park 3', 2001, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-poco', 'O Poço', 2019, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['filosofica', 'psicologica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_filosofica']).
filme('o-predador-a-cacada', 'O Predador: A Caçada', 2022, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('lanterna-verde', 'Lanterna Verde', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('pantera-negra-wakanda-para-sempre', 'Pantera Negra: Wakanda para Sempre', 2022, 'ficcao_cientifica', 'live_action', ['emocional', 'tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('rampage-destruicao-total', 'Rampage: Destruição Total', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('a-viagem', 'A Viagem', 2012, 'ficcao_cientifica', 'live_action', ['reflexiva'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_filosofica']).
filme('o-exterminador-do-futuro-3-a-rebeliao-das-maquinas', 'O Exterminador do Futuro 3: A Rebelião das Máquinas', 2003, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('tomorrowland-um-lugar-onde-nada-e-impossivel', 'Tomorrowland: Um Lugar Onde Nada É Impossível', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('ad-astra-rumo-as-estrelas', 'Ad Astra - Rumo às Estrelas', 2019, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['filosofica'], 'moderado', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('x-men-fenix-negra', 'X-Men: Fênix Negra', 2019, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('jurassic-world-dominio', 'Jurassic World: Domínio', 2022, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('adao-negro', 'Adão Negro', 2022, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('super-8', 'Super 8', 2011, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('as-tartarugas-ninja', 'As Tartarugas Ninja', 2014, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('star-trek-sem-fronteiras', 'Star Trek: Sem Fronteiras', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('o-exterminador-do-futuro-a-salvacao', 'O Exterminador do Futuro: A Salvação', 2009, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-destino-de-jupiter', 'O Destino de Júpiter', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('a-serie-divergente-convergente', 'A Série Divergente: Convergente', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['filosofica', 'aventura'], 'moderado', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('depois-da-terra', 'Depois da Terra', 2013, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('godzilla-ii-rei-dos-monstros', 'Godzilla II: Rei dos Monstros', 2019, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-livro-de-eli', 'O Livro de Eli', 2010, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['aventura'], 'rapido', sim, ['aventura', 'reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('a-i-inteligencia-artificial', 'A.I.: Inteligência Artificial', 2001, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('homem-aranha-um-novo-dia', 'Homem-Aranha: Um Novo Dia', 2026, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('transformers-o-ultimo-cavaleiro', 'Transformers: O Último Cavaleiro', 2017, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('bumblebee', 'Bumblebee', 2018, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('matrix-resurrections', 'Matrix Resurrections', 2021, 'ficcao_cientifica', 'live_action', ['reflexiva', 'fantastica'], ['filosofica', 'misterio'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('contagio', 'Contágio', 2011, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio'], 'rapido', nao, ['sem_reviravolta']).
filme('independence-day-o-ressurgimento', 'Independence Day: O Ressurgimento', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('onde-esta-segunda', 'Onde Está Segunda?', 2017, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'ficcao_tecnologia']).
filme('quarteto-fantastico-2015', 'Quarteto Fantástico', 2015, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('hulk', 'Hulk', 2003, 'ficcao_cientifica', 'live_action', ['emocional', 'reflexiva'], ['aventura'], 'rapido', nao, ['aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('paul-o-alien-fugitivo', 'Paul: O Alien Fugitivo', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('jumper', 'Jumper', 2008, 'ficcao_cientifica', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('ender-s-game-o-jogo-do-exterminador', 'Ender\'s Game: O Jogo do Exterminador', 2013, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('sr-ninguem', 'Sr. Ninguém', 2009, 'ficcao_cientifica', 'live_action', ['fantastica', 'reflexiva'], ['filosofica'], 'moderado', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('john-carter-entre-dois-mundos', 'John Carter: Entre Dois Mundos', 2012, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('battleship-a-batalha-dos-mares', 'Battleship: A Batalha dos Mares', 2012, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('homem-formiga-e-a-vespa-quantumania', 'Homem-Formiga e a Vespa: Quantumania', 2023, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('a-outra-face', 'A Outra Face', 1997, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('a-5-onda', 'A 5ª Onda', 2016, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura', 'filosofica'], 'moderado', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('a-ilha', 'A Ilha', 2005, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('herois-de-ressaca', 'Heróis de Ressaca', 2013, 'ficcao_cientifica', 'live_action', ['reflexiva', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'reflexivo', 'sem_reviravolta', 'ficcao_aventura']).
filme('marte-ataca', 'Marte Ataca!', 1996, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('robocop', 'RoboCop', 2014, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-vingador-do-futuro-2012', 'O Vingador do Futuro', 2012, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('robocop-o-policial-do-futuro', 'RoboCop - O Policial do Futuro', 1987, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('pressagio', 'Presságio', 2009, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['misterio'], 'moderado', sim, ['reflexivo', 'reviravolta', 'ficcao_aventura']).
filme('transcendence-a-revolucao', 'Transcendence: A Revolução', 2014, 'ficcao_cientifica', 'live_action', ['reflexiva', 'fantastica'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('poder-sem-limites', 'Poder Sem Limites', 2012, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['psicologica'], 'moderado', nao, ['sem_reviravolta', 'ficcao_tecnologia']).
filme('o-exterminador-do-futuro-destino-sombrio', 'O Exterminador do Futuro: Destino Sombrio', 2019, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('pobres-criaturas', 'Pobres Criaturas', 2023, 'ficcao_cientifica', 'live_action', ['fantastica', 'reflexiva'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_filosofica']).
filme('g-i-joe-retaliacao', 'G.I. Joe: Retaliação', 2013, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('tropas-estelares', 'Tropas Estelares', 1997, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('dredd-o-juiz-do-apocalipse', 'Dredd: O Juiz do Apocalipse', 2012, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('superman', 'Superman', 2025, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('a-torre-negra', 'A Torre Negra', 2017, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('cowboys-aliens', 'Cowboys & Aliens', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('batman-robin', 'Batman & Robin', 1997, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura', 'filosofica'], 'moderado', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('projeto-gemini', 'Projeto Gemini', 2019, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('destruicao-final-o-ultimo-refugio', 'Destruição Final: O Último Refúgio', 2020, 'ficcao_cientifica', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('mib-homens-de-preto-internacional', 'MIB Homens de Preto: Internacional', 2019, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('circulo-de-fogo-a-revolta', 'Círculo de Fogo: A Revolta', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('deja-vu', 'Déjà Vu', 2006, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio', 'aventura'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_tecnologia']).
filme('transformers-o-despertar-das-feras', 'Transformers: O Despertar das Feras', 2023, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('cubo', 'Cubo', 1998, 'ficcao_cientifica', 'live_action', ['tensa', 'reflexiva'], ['psicologica', 'filosofica'], 'moderado', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_filosofica']).
filme('maquinas-mortais', 'Máquinas Mortais', 2018, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('tempestade-planeta-em-furia', 'Tempestade: Planeta em Fúria', 2017, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['misterio'], 'moderado', nao, ['sem_reviravolta', 'ficcao_tecnologia']).
filme('bloodshot', 'Bloodshot', 2020, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'misterio'], 'rapido', sim, ['aventura', 'reviravolta', 'ficcao_tecnologia']).
filme('the-flash', 'The Flash', 2023, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('furiosa-uma-saga-mad-max', 'Furiosa: Uma Saga Mad Max', 2024, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('upgrade-atualizacao', 'Upgrade: Atualização', 2018, 'ficcao_cientifica', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['reviravolta', 'ficcao_tecnologia']).
filme('viagem-ao-centro-da-terra-o-filme', 'Viagem ao Centro da Terra: O Filme', 2008, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-predador-2018', 'O Predador', 2018, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('equilibrium', 'Equilibrium', 2002, 'ficcao_cientifica', 'live_action', ['emocional', 'tensa'], ['filosofica', 'aventura'], 'rapido', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('o-projeto-adam', 'O Projeto Adam', 2022, 'ficcao_cientifica', 'live_action', ['emocional', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('mad-max', 'Mad Max', 1979, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'psicologica'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('eu-sou-o-numero-quatro', 'Eu Sou o Número Quatro', 2011, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('os-agentes-do-destino', 'Os Agentes do Destino', 2011, 'ficcao_cientifica', 'live_action', ['reflexiva', 'tensa'], ['misterio', 'filosofica'], 'rapido', sim, ['filosofico', 'reflexivo', 'reviravolta', 'ficcao_tecnologia']).
filme('g-i-joe-a-origem-de-cobra', 'G.I. Joe: A Origem de Cobra', 2009, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('morbius', 'Morbius', 2022, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('eclipse-mortal', 'Eclipse Mortal', 2000, 'ficcao_cientifica', 'live_action', ['tensa'], ['aventura', 'filosofica'], 'moderado', nao, ['filosofico', 'aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('godzilla-e-kong-o-novo-imperio', 'Godzilla e Kong: O Novo Império', 2024, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('vanilla-sky', 'Vanilla Sky', 2001, 'ficcao_cientifica', 'live_action', ['fantastica'], ['psicologica', 'filosofica'], 'moderado', sim, ['filosofico', 'reviravolta', 'ficcao_filosofica']).
filme('contatos-imediatos-do-terceiro-grau', 'Contatos Imediatos do Terceiro Grau', 1977, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['misterio', 'aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('predadores', 'Predadores', 2010, 'ficcao_cientifica', 'live_action', ['tensa', 'fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('superman-o-retorno', 'Superman: O Retorno', 2006, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('power-rangers', 'Power Rangers', 2017, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('o-doador-de-memorias', 'O Doador de Memórias', 2014, 'ficcao_cientifica', 'live_action', ['emocional', 'reflexiva'], ['filosofica'], 'moderado', nao, ['filosofico', 'reflexivo', 'sem_reviravolta', 'ficcao_tecnologia']).
filme('a-batalha-de-riddick', 'A Batalha de Riddick', 2004, 'ficcao_cientifica', 'live_action', ['fantastica'], ['aventura'], 'rapido', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('avatar-fogo-e-cinzas', 'Avatar: Fogo e Cinzas', 2025, 'ficcao_cientifica', 'live_action', ['fantastica', 'tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('okja', 'Okja', 2017, 'ficcao_cientifica', 'live_action', ['emocional', 'tensa'], ['aventura'], 'moderado', nao, ['aventura', 'sem_reviravolta', 'ficcao_aventura']).
filme('para-sempre', 'Para Sempre', 2012, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('melhor-e-impossivel', 'Melhor é Impossível', 1997, 'romance', 'live_action', ['leve', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('tempos-modernos', 'Tempos Modernos', 1936, 'romance', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('show-de-vizinha', 'Show de Vizinha', 2004, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('foi-apenas-um-sonho', 'Foi Apenas Um Sonho', 2008, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('amor-sem-escalas', 'Amor Sem Escalas', 2009, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional'], 'rapido', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-duble', 'O Dublê', 2024, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-lutador', 'O Lutador', 2008, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('vicky-cristina-barcelona', 'Vicky Cristina Barcelona', 2008, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('que-horas-eu-te-pego', 'Que Horas Eu Te Pego?', 2023, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('ele-nao-esta-tao-a-fim-de-voce', 'Ele Não Está Tão a Fim de Você', 2009, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('podres-de-ricos', 'Podres de Ricos', 2018, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('mesmo-se-nada-der-certo', 'Mesmo Se Nada Der Certo', 2014, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('quanto-mais-quente-melhor', 'Quanto Mais Quente Melhor', 1959, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', sim, ['romance_classico']).
filme('ela-danca-eu-danco', 'Ela Dança, Eu Danço', 2006, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('jerry-maguire-a-grande-virada', 'Jerry Maguire: A Grande Virada', 1996, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('um-cadaver-para-sobreviver', 'Um Cadáver para Sobreviver', 2016, 'romance', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'emocional'], 'lento', sim, ['romance_drama']).
filme('juntos-e-misturados', 'Juntos e Misturados', 2014, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('trama-fantasma', 'Trama Fantasma', 2017, 'romance', 'live_action', ['reflexiva'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('um-homem-de-sorte', 'Um Homem de Sorte', 2012, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-verdade-nua-e-crua', 'A Verdade Nua e Crua', 2009, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-primeira-noite-de-um-homem', 'A Primeira Noite de um Homem', 1967, 'romance', 'live_action', ['reflexiva'], ['emocional', 'romantica'], 'lento', nao, ['sem_reviravolta', 'romance_classico']).
filme('closer-perto-demais', 'Closer: Perto Demais', 2004, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('lembrancas', 'Lembranças', 2010, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', sim, ['romance_drama']).
filme('mulheres-ao-ataque', 'Mulheres ao Ataque', 2014, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('ressaca-de-amor', 'Ressaca de Amor', 2008, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('mens-gem-para-voce', 'Mens@gem para Você', 1998, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-novica-rebelde', 'A Noviça Rebelde', 1965, 'romance', 'live_action', ['emocional', 'leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('segundas-intencoes', 'Segundas Intenções', 1999, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('tudo-e-todas-as-coisas', 'Tudo e Todas as Coisas', 2017, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('as-virgens-suicidas', 'As Virgens Suicidas', 2000, 'romance', 'live_action', ['reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('guerra-e-guerra', 'Guerra é Guerra!', 2012, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('cantando-na-chuva', 'Cantando na Chuva', 1952, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('o-artista', 'O Artista', 2011, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('namorados-para-sempre', 'Namorados para Sempre', 2010, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('mamma-mia-la-vamos-nos-de-novo', 'Mamma Mia!: Lá Vamos Nós de Novo', 2018, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('anora', 'Anora', 2024, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('megarromantico', 'Megarromântico', 2019, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('chocolate', 'Chocolate', 2000, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('sol-da-meia-noite', 'Sol da Meia-noite', 2018, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('entrando-numa-fria-maior-ainda-com-a-familia', 'Entrando numa Fria Maior Ainda com a Família', 2010, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('coracao-de-cavaleiro', 'Coração de Cavaleiro', 2001, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('p-s-eu-te-amo', 'P.S. Eu Te Amo', 2007, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('vestida-para-casar', 'Vestida para Casar', 2008, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-leitor', 'O Leitor', 2008, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('memorias-de-uma-gueixa', 'Memórias de uma Gueixa', 2005, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-diario-da-princesa-2-casamento-real', 'O Diário da Princesa 2: Casamento Real', 2004, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('sierra-burgess-e-uma-loser', 'Sierra Burgess é uma Loser', 2018, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-primeiro-amor', 'O Primeiro Amor', 2010, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-nova-cinderela', 'A Nova Cinderela', 2004, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-pequena-sereia-2023', 'A Pequena Sereia', 2023, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('jogo-de-amor-em-las-vegas', 'Jogo de Amor em Las Vegas', 2008, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('como-ser-solteira', 'Como Ser Solteira', 2016, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-ultima-musica', 'A Última Música', 2010, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('ela-e-o-cara', 'Ela é o Cara', 2006, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-guarda-costas', 'O Guarda-Costas', 1992, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('atraves-da-minha-janela', 'Através da Minha Janela', 2022, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('uma-longa-jornada', 'Uma Longa Jornada', 2015, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-date-perfeito', 'O Date Perfeito', 2019, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('juntos-pelo-acaso', 'Juntos Pelo Acaso', 2010, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('brooklin-um-amor-sem-fronteiras', 'Brooklin: Um Amor Sem Fronteiras', 2015, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('wicked', 'Wicked', 2024, 'romance', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('shakespeare-apaixonado', 'Shakespeare Apaixonado', 1998, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('todos-menos-voce', 'Todos Menos Você', 2023, 'romance', 'live_action', ['leve'], ['romantica'], 'rapido', nao, ['sem_reviravolta', 'romance_leve']).
filme('paixao-sem-limites', 'Paixão Sem Limites', 2010, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-amor-e-cego', 'O Amor é Cego', 2001, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('noivas-em-guerra', 'Noivas em Guerra', 2009, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('johnny-june', 'Johnny & June', 2005, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('72-horas', '72 Horas', 2010, 'romance', 'live_action', ['emocional'], ['emocional', 'romantica'], 'rapido', sim, ['romance_drama']).
filme('amor-a-queima-roupa', 'Amor à Queima-Roupa', 1993, 'romance', 'live_action', ['emocional'], ['romantica'], 'rapido', sim, ['romance_classico']).
filme('idas-e-vindas-do-amor', 'Idas e Vindas do Amor', 2010, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('os-sonhadores', 'Os Sonhadores', 2003, 'romance', 'live_action', ['reflexiva'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-melhor-lance', 'O Melhor Lance', 2013, 'romance', 'live_action', ['reflexiva', 'emocional'], ['romantica', 'filosofica'], 'lento', sim, ['romance_drama']).
filme('o-bebe-de-bridget-jones', 'O Bebê de Bridget Jones', 2016, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cacador-de-recompensas', 'Caçador de Recompensas', 2010, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('quero-ficar-com-polly', 'Quero Ficar Com Polly', 2004, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('quatro-casamentos-e-um-funeral', 'Quatro Casamentos e um Funeral', 1994, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('bridget-jones-no-limite-da-razao', 'Bridget Jones: No Limite da Razão', 2004, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-casa-do-lago', 'A Casa do Lago', 2006, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-maravilhoso-agora', 'O Maravilhoso Agora', 2013, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('um-faz-de-conta-que-acontece', 'Um Faz de Conta Que Acontece', 2008, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('por-lugares-incriveis', 'Por Lugares Incríveis', 2020, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'emocional'], 'lento', nao, ['sem_reviravolta', 'romance_drama']).
filme('cartas-para-julieta', 'Cartas para Julieta', 2010, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('casal-improvavel', 'Casal Improvável', 2019, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-casamento-do-meu-melhor-amigo', 'O Casamento do Meu Melhor Amigo', 1997, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('dezesseis-luas', 'Dezesseis Luas', 2013, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('lendas-da-paixao', 'Lendas da Paixão', 1994, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('continencia-ao-amor', 'Continência ao Amor', 2022, 'romance', 'live_action', ['emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('rivais', 'Rivais', 2024, 'romance', 'live_action', ['reflexiva', 'emocional'], ['romantica', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'romance_drama']).
filme('separados-pelo-casamento', 'Separados Pelo Casamento', 2006, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('embriagado-de-amor', 'Embriagado de Amor', 2002, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-fera', 'A Fera', 2011, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('o-plano-imperfeito', 'O Plano Imperfeito', 2018, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('cafe-society', 'Café Society', 2016, 'romance', 'live_action', ['reflexiva', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('antes-da-meia-noite', 'Antes da Meia-Noite', 2013, 'romance', 'live_action', ['reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('se-meu-apartamento-falasse', 'Se Meu Apartamento Falasse', 1960, 'romance', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('licorice-pizza', 'Licorice Pizza', 2021, 'romance', 'live_action', ['leve', 'reflexiva'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('te-amarei-para-sempre', 'Te Amarei Para Sempre', 2009, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('os-delirios-de-consumo-de-becky-bloom', 'Os Delírios de Consumo de Becky Bloom', 2009, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('descompensada', 'Descompensada', 2015, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('pagando-bem-que-mal-tem', 'Pagando Bem, Que Mal Tem?', 2008, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('no-ritmo-do-coracao', 'No Ritmo do Coração', 2021, 'romance', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('after-depois-do-desencontro', 'After: Depois do Desencontro', 2021, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('namoro-ou-liberdade', 'Namoro ou Liberdade', 2014, 'romance', 'live_action', ['leve'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('o-melhor-de-mim', 'O Melhor de Mim', 2014, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('lola', 'Lola', 2012, 'romance', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('vidas-a-deriva', 'Vidas à Deriva', 2018, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('sintonia-de-amor', 'Sintonia de Amor', 1993, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('para-todos-os-garotos-p-s-ainda-amo-voce', 'Para Todos os Garotos: P.S. Ainda Amo Você', 2020, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('love', 'Love', 2015, 'romance', 'live_action', ['reflexiva'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('doentes-de-amor', 'Doentes de Amor', 2017, 'romance', 'live_action', ['leve', 'emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('tres-vezes-amor', 'Três Vezes Amor', 2008, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('uma-segunda-chance-para-amar', 'Uma Segunda Chance Para Amar', 2019, 'romance', 'live_action', ['leve', 'emocional'], ['romantica'], 'moderado', sim, ['romance_leve']).
filme('comer-rezar-amar', 'Comer, Rezar, Amar', 2010, 'romance', 'live_action', ['emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('manhattan', 'Manhattan', 1979, 'romance', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'romantica'], 'lento', nao, ['sem_reviravolta', 'romance_drama']).
filme('hairspray-em-busca-da-fama', 'Hairspray: Em Busca da Fama', 2007, 'romance', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('mais-estranho-que-a-ficcao', 'Mais Estranho que a Ficção', 2006, 'romance', 'live_action', ['emocional', 'leve'], ['filosofica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('agua-para-elefantes', 'Água para Elefantes', 2011, 'romance', 'live_action', ['emocional'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('e-se-fosse-verdade', 'E Se Fosse Verdade', 2005, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('a-heranca-de-mr-deeds', 'A Herança de Mr. Deeds', 2002, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('amor-alem-da-vida', 'Amor Além da Vida', 1998, 'romance', 'live_action', ['emocional', 'reflexiva'], ['romantica', 'filosofica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('a-riviera-nao-e-aqui', 'A Riviera Não é Aqui', 2008, 'romance', 'live_action', ['leve'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('eu-os-declaro-marido-e-larry', 'Eu os Declaro Marido... e Larry', 2007, 'romance', 'live_action', ['leve'], ['romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_leve']).
filme('karate-kid-2-a-hora-da-verdade-continua', 'Karatê Kid 2: A Hora da Verdade Continua', 1986, 'romance', 'live_action', ['leve', 'emocional'], ['romantica', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'romance_classico']).
filme('depois-daquela-montanha', 'Depois Daquela Montanha', 2017, 'romance', 'live_action', ['emocional'], ['emocional', 'romantica'], 'moderado', nao, ['sem_reviravolta', 'romance_drama']).
filme('gasparzinho-o-fantasminha-camarada', 'Gasparzinho, o Fantasminha Camarada', 1995, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('encontro-explosivo', 'Encontro Explosivo', 2010, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-caca-fantasmas-2', 'Os Caça-Fantasmas 2', 1989, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('professora-sem-classe', 'Professora Sem Classe', 2011, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('dungeons-dragons-honra-entre-rebeldes', 'Dungeons & Dragons: Honra Entre Rebeldes', 2023, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('american-pie-o-reencontro', 'American Pie: O Reencontro', 2012, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('quero-ser-john-malkovich', 'Quero Ser John Malkovich', 1999, 'comedia', 'live_action', ['reflexiva'], ['critica_social', 'emocional'], 'moderado', sim, ['critica_social', 'comedia_social']).
filme('matilda', 'Matilda', 1996, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('sem-dor-sem-ganho', 'Sem Dor, Sem Ganho', 2013, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('marley-eu', 'Marley & Eu', 2008, 'comedia', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'comedia_emocional']).
filme('gente-grande-2', 'Gente Grande 2', 2013, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-hora-do-rush-2', 'A Hora do Rush 2', 2001, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('e-ai-meu-irmao-cade-voce', 'E Aí, Meu Irmão, Cadê Você?', 2000, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social', 'aventura'], 'moderado', sim, ['humor', 'critica_social', 'comedia_social']).
filme('um-tira-da-pesada', 'Um Tira da Pesada', 1984, 'comedia', 'live_action', ['leve'], ['aventura', 'critica_social'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('o-pequeno-stuart-little', 'O Pequeno Stuart Little', 1999, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-outros-caras', 'Os Outros Caras', 2010, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('um-duende-em-nova-york', 'Um Duende em Nova York', 2003, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('ace-ventura-2-um-maluco-na-africa', 'Ace Ventura 2: Um Maluco na África', 1995, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('corra-que-a-policia-vem-ai', 'Corra que a Polícia Vem Aí!', 1988, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-irmaos-cara-de-pau', 'Os Irmãos Cara de Pau', 1980, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('todo-mundo-em-panico-3', 'Todo Mundo em Pânico 3', 2003, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('vizinhos-2', 'Vizinhos 2', 2016, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('tirando-o-atraso', 'Tirando o Atraso', 2016, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-volta-do-todo-poderoso', 'A Volta do Todo Poderoso', 2007, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-panteras', 'As Panteras', 2000, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('dose-dupla', 'Dose Dupla', 2013, 'comedia', 'live_action', ['leve'], ['critica_social', 'aventura'], 'rapido', sim, ['humor', 'critica_social', 'comedia_leve']).
filme('amor-e-monstros', 'Amor e Monstros', 2020, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-balada-de-buster-scruggs', 'A Balada de Buster Scruggs', 2018, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('wonka', 'Wonka', 2023, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-estagiarios', 'Os Estagiários', 2013, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-milhao-de-maneiras-de-pegar-na-pistola', 'Um Milhão de Maneiras de Pegar na Pistola', 2014, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('quero-matar-meu-chefe-2', 'Quero Matar Meu Chefe 2', 2014, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('tinha-que-ser-ele', 'Tinha Que Ser Ele?', 2016, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('sete-psicopatas-e-um-shih-tzu', 'Sete Psicopatas e um Shih Tzu', 2012, 'comedia', 'live_action', ['leve', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', sim, ['humor', 'critica_social', 'comedia_social']).
filme('caminhos-da-floresta', 'Caminhos da Floresta', 2014, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('red-2-aposentados-e-ainda-mais-perigosos', 'RED 2: Aposentados e Ainda Mais Perigosos', 2013, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('eu-eu-mesmo-irene', 'Eu, Eu Mesmo & Irene', 2000, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-aventuras-de-paddington', 'As Aventuras de Paddington', 2014, 'comedia', 'live_action', ['emocional'], ['emocional', 'aventura'], 'moderado', nao, ['sem_reviravolta', 'comedia_emocional']).
filme('r-i-p-d-agentes-do-alem', 'R.I.P.D.: Agentes do Além', 2013, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('sexta-feira-muito-louca', 'Sexta-Feira Muito Louca', 2003, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('miss-simpatia', 'Miss Simpatia', 2000, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('segurando-as-pontas', 'Segurando as Pontas', 2008, 'comedia', 'live_action', ['leve'], ['aventura', 'critica_social'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('garfield-o-filme', 'Garfield: O Filme', 2004, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('quase-18', 'Quase 18', 2016, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('perfeita-e-a-mae', 'Perfeita é a Mãe!', 2016, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('50', '50%', 2011, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('sex-tape-perdido-na-nuvem', 'Sex Tape: Perdido na Nuvem', 2014, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-bem-armadas', 'As Bem-Armadas', 2013, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('antes-de-partir', 'Antes de Partir', 2007, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('quero-ser-grande', 'Quero Ser Grande', 1988, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('zohan-um-agente-bom-de-corte', 'Zohan: Um Agente Bom de Corte', 2008, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('cidade-perdida', 'Cidade Perdida', 2022, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('viagem-a-darjeeling', 'Viagem a Darjeeling', 2007, 'comedia', 'live_action', ['reflexiva'], ['aventura'], 'lento', nao, ['sem_reviravolta', 'comedia_emocional']).
filme('a-fantastica-fabrica-de-chocolate-1971', 'A Fantástica Fábrica de Chocolate', 1971, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('ferias-frustradas', 'Férias Frustradas', 2015, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('agente-86', 'Agente 86', 2008, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('babilonia', 'Babilônia', 2022, 'comedia', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('logan-lucky-roubo-em-familia', 'Logan Lucky: Roubo em Família', 2017, 'comedia', 'live_action', ['leve'], ['emocional'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('com-a-bola-toda', 'Com a Bola Toda', 2004, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('austin-powers-000-um-agente-nada-discreto', 'Austin Powers: 000, um Agente Nada Discreto', 1997, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('johnny-english', 'Johnny English', 2003, 'comedia', 'live_action', ['leve'], ['critica_social', 'aventura'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('dolittle', 'Dolittle', 2020, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-hora-do-rush-3', 'A Hora do Rush 3', 2007, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('high-school-musical-2', 'High School Musical 2', 2007, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('artista-do-desastre', 'Artista do Desastre', 2017, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('asterix-e-obelix-missao-cleopatra', 'Astérix e Obélix: Missão Cleópatra', 2002, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_social']).
filme('o-grande-ditador', 'O Grande Ditador', 1940, 'comedia', 'live_action', ['leve', 'reflexiva'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('o-pior-vizinho-do-mundo', 'O Pior Vizinho do Mundo', 2022, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('austin-powers-o-agente-bond-cama', 'Austin Powers: O Agente ‘Bond’ Cama', 1999, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('shazam-furia-dos-deuses', 'Shazam! Fúria dos Deuses', 2023, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('trocando-as-bolas', 'Trocando as Bolas', 1983, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('golpe-baixo', 'Golpe Baixo', 2005, 'comedia', 'live_action', ['leve'], ['critica_social', 'emocional'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('todo-mundo-em-panico-4', 'Todo Mundo em Pânico 4', 2006, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('boogie-nights-prazer-sem-limites', 'Boogie Nights: Prazer Sem Limites', 1997, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('101-dalmatas', '101 Dálmatas', 1996, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-retorno-de-johnny-english', 'O Retorno de Johnny English', 2011, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('o-paizao', 'O Paizão', 1999, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('machete', 'Machete', 2010, 'comedia', 'live_action', ['leve', 'emocional'], ['aventura', 'critica_social'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-banshees-de-inisherin', 'Os Banshees de Inisherin', 2022, 'comedia', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'critica_social'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'comedia_emocional']).
filme('high-school-musical-3-ano-da-formatura', 'High School Musical 3: Ano da Formatura', 2008, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('tratamento-de-choque', 'Tratamento de Choque', 2003, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('austin-powers-o-homem-do-membro-de-ouro', 'Austin Powers: O Homem do Membro de Ouro', 2002, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('o-besouro-verde', 'O Besouro Verde', 2011, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('te-peguei', 'Te Peguei!', 2018, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('como-enlouquecer-seu-chefe', 'Como Enlouquecer Seu Chefe', 1999, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('uma-ladra-sem-limites', 'Uma Ladra Sem Limites', 2013, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('walt-nos-bastidores-de-mary-poppins', 'Walt nos Bastidores de Mary Poppins', 2013, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('quase-irmaos', 'Quase Irmãos', 2008, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('mudanca-de-habito', 'Mudança de Hábito', 1992, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('que-mal-eu-fiz-a-deus', 'Que Mal Eu Fiz a Deus?', 2014, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-aventureiros-do-bairro-proibido', 'Os Aventureiros do Bairro Proibido', 1986, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('patch-adams-o-amor-e-contagioso', 'Patch Adams: O Amor é Contagioso', 1998, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('bad-boys-ate-o-fim', 'Bad Boys: Até o Fim', 2024, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('o-retorno-de-mary-poppins', 'O Retorno de Mary Poppins', 2018, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('debi-loide-2', 'Debi & Lóide 2', 2014, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('pai-em-dose-dupla', 'Pai em Dose Dupla', 2015, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-maluco-no-golfe', 'Um Maluco no Golfe', 1996, 'comedia', 'live_action', ['leve'], ['critica_social', 'emocional'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('o-jovem-frankenstein', 'O Jovem Frankenstein', 1974, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('a-escolha-perfeita-3', 'A Escolha Perfeita 3', 2017, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('t2-trainspotting', 'T2: Trainspotting', 2017, 'comedia', 'live_action', ['reflexiva', 'emocional'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'comedia_emocional']).
filme('abracadabra', 'Abracadabra', 1993, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-familia-addams-2', 'A Família Addams 2', 1993, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('um-filme-minecraft', 'Um Filme Minecraft', 2025, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('dr-dolittle', 'Dr. Dolittle', 1998, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('esqueceram-de-mim-3', 'Esqueceram de Mim 3', 1997, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-panteras-detonando', 'As Panteras: Detonando', 2003, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('operacao-baba', 'Operação Babá', 2005, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('de-repente-uma-familia', 'De Repente uma Família', 2018, 'comedia', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('espelho-espelho-meu', 'Espelho, Espelho Meu', 2012, 'comedia', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('a-vida-marinha-com-steve-zissou', 'A Vida Marinha com Steve Zissou', 2004, 'comedia', 'live_action', ['leve', 'reflexiva'], ['aventura'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('roubo-nas-alturas', 'Roubo nas Alturas', 2011, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('nanny-mcphee-a-baba-encantada', 'Nanny McPhee: A Babá Encantada', 2005, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('os-pinguins-do-papai', 'Os Pinguins do Papai', 2011, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-ferias-de-mr-bean', 'As Férias de Mr. Bean', 2007, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('deus-da-carnificina', 'Deus da Carnificina', 2011, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'comedia_social']).
filme('babe-o-porquinho-atrapalhado', 'Babe, o Porquinho Atrapalhado', 1995, 'comedia', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_emocional']).
filme('operacao-natal', 'Operação Natal', 2024, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('as-panteras-2019', 'As Panteras', 2019, 'comedia', 'live_action', ['leve'], ['aventura'], 'rapido', sim, ['humor', 'comedia_leve']).
filme('saltburn', 'Saltburn', 2023, 'comedia', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', sim, ['critica_social', 'comedia_social']).
filme('a-familia', 'A Família', 2013, 'comedia', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['humor', 'sem_reviravolta', 'comedia_leve']).
filme('todo-mundo-em-panico-5', 'Todo Mundo em Pânico 5', 2013, 'comedia', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_social']).
filme('os-descendentes', 'Os Descendentes', 2011, 'comedia', 'live_action', ['emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'comedia_emocional']).
filme('golpe-de-mestre', 'Golpe de Mestre', 1973, 'comedia', 'live_action', ['leve'], ['critica_social', 'emocional'], 'rapido', sim, ['humor', 'critica_social', 'comedia_leve']).
filme('beijos-e-tiros', 'Beijos e Tiros', 2005, 'comedia', 'live_action', ['leve'], ['critica_social'], 'rapido', sim, ['humor', 'critica_social', 'comedia_social']).
filme('uma-noite-fora-de-serie', 'Uma Noite Fora de Série', 2010, 'comedia', 'live_action', ['leve'], ['critica_social', 'emocional'], 'rapido', nao, ['humor', 'critica_social', 'sem_reviravolta', 'comedia_leve']).
filme('apocalypto', 'Apocalypto', 2006, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('lara-croft-tomb-raider', 'Lara Croft: Tomb Raider', 2001, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('motoqueiro-fantasma', 'Motoqueiro Fantasma', 2007, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('falcao-negro-em-perigo', 'Falcão Negro em Perigo', 2001, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('duro-de-matar-2', 'Duro de Matar 2', 1990, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('a-lenda-de-tarzan', 'A Lenda de Tarzan', 2016, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sete-homens-e-um-destino', 'Sete Homens e Um Destino', 2016, 'acao', 'live_action', ['emocional'], ['aventura', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('velozes-furiosos-10', 'Velozes & Furiosos 10', 2023, 'acao', 'live_action', ['tensa', 'leve'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('duro-de-matar-4-0', 'Duro de Matar 4.0', 2007, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('jason-bourne', 'Jason Bourne', 2016, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('o-legado-bourne', 'O Legado Bourne', 2012, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('busca-implacavel-3', 'Busca Implacável 3', 2014, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-cavaleiro-solitario', 'O Cavaleiro Solitário', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('uma-saida-de-mestre', 'Uma Saída de Mestre', 2003, 'acao', 'live_action', ['tensa'], ['aventura', 'investigacao'], 'rapido', sim, ['acao_espionagem']).
filme('o-protetor-2', 'O Protetor 2', 2018, 'acao', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('rei-arthur-a-lenda-da-espada', 'Rei Arthur: A Lenda da Espada', 2017, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('salt', 'Salt', 2010, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', sim, ['acao_espionagem']).
filme('bright', 'Bright', 2017, 'acao', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('carga-explosiva', 'Carga Explosiva', 2002, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('chamas-da-vinganca', 'Chamas da Vingança', 2004, 'acao', 'live_action', ['tensa'], ['critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('nocaute', 'Nocaute', 2015, 'acao', 'live_action', ['emocional', 'tensa'], ['emocional', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('creed-ii', 'Creed II', 2018, 'acao', 'live_action', ['tensa', 'leve'], ['emocional', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('sem-escalas', 'Sem Escalas', 2014, 'acao', 'live_action', ['tensa'], ['aventura', 'investigacao'], 'rapido', sim, ['acao_aventura']).
filme('a-prova-de-morte', 'À Prova de Morte', 2007, 'acao', 'live_action', ['tensa'], ['investigacao'], 'lento', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('batman-eternamente', 'Batman Eternamente', 1995, 'acao', 'live_action', ['tensa'], ['aventura', 'investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('hellboy-ii-o-exercito-dourado', 'Hellboy II: O Exército Dourado', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('rota-de-fuga', 'Rota de Fuga', 2013, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('a-lenda-do-tesouro-perdido-livro-dos-segredos', 'A Lenda do Tesouro Perdido: Livro dos Segredos', 2007, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('a-grande-muralha', 'A Grande Muralha', 2016, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('atirador', 'Atirador', 2007, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('demolidor-o-homem-sem-medo', 'Demolidor: O Homem Sem Medo', 2003, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('jack-reacher-sem-retorno', 'Jack Reacher: Sem Retorno', 2016, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_espionagem']).
filme('os-mercenarios-3', 'Os Mercenários 3', 2014, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('missao-impossivel-acerto-de-contas-parte-1', 'Missão: Impossível - Acerto de Contas Parte 1', 2023, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', sim, ['acao_espionagem']).
filme('arranha-ceu-coragem-sem-limite', 'Arranha-Céu: Coragem Sem Limite', 2018, 'acao', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('a-rocha', 'A Rocha', 1996, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-aprendiz-de-feiticeiro', 'O Aprendiz de Feiticeiro', 2010, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('jack-o-cacador-de-gigantes', 'Jack, O Caçador de Gigantes', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-homem-do-norte', 'O Homem do Norte', 2022, 'acao', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('platoon', 'Platoon', 1986, 'acao', 'live_action', ['tensa'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('esquadrao-6', 'Esquadrão 6', 2019, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('cruzada', 'Cruzada', 2005, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('king-s-man-a-origem', 'King\'s Man: A Origem', 2021, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura', 'investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('maquina-mortifera', 'Máquina Mortífera', 1987, 'acao', 'live_action', ['tensa'], ['aventura', 'investigacao'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sucker-punch-mundo-surreal', 'Sucker Punch: Mundo Surreal', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-ataque', 'O Ataque', 2013, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('invasao-a-londres', 'Invasão a Londres', 2016, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('robin-hood-2010', 'Robin Hood', 2010, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('guerreiro', 'Guerreiro', 2011, 'acao', 'live_action', ['emocional', 'tensa'], ['emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('a-odisseia', 'A Odisseia', 2026, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-cacador-e-a-rainha-do-gelo', 'O Caçador e a Rainha do Gelo', 2016, 'acao', 'live_action', ['emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('60-segundos', '60 Segundos', 2000, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('horizonte-profundo-desastre-no-golfo', 'Horizonte Profundo: Desastre no Golfo', 2016, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('triplo-x', 'Triplo X', 2002, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-fugitivo', 'O Fugitivo', 1993, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', sim, ['acao_perseguicao']).
filme('the-old-guard', 'The Old Guard', 2020, 'acao', 'live_action', ['tensa', 'reflexiva'], ['aventura', 'emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('f1-o-filme', 'F1: O Filme', 2025, 'acao', 'live_action', ['emocional', 'tensa'], ['emocional', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('a-mumia-tumba-do-imperador-dragao', 'A Múmia - Tumba do Imperador Dragão', 2008, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('exodo-deuses-e-reis', 'Êxodo: Deuses e Reis', 2014, 'acao', 'live_action', ['tensa'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-grande-heroi', 'O Grande Herói', 2013, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('con-air-a-rota-da-fuga', 'Con Air: A Rota da Fuga', 1997, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('gladiador-2', 'Gladiador 2', 2024, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura', 'emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('need-for-speed-o-filme', 'Need for Speed: O Filme', 2014, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-passageiro', 'O Passageiro', 2018, 'acao', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('true-lies', 'True Lies', 1994, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-corvo', 'O Corvo', 1994, 'acao', 'live_action', ['emocional', 'tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('guerra-civil', 'Guerra Civil', 2024, 'acao', 'live_action', ['tensa', 'reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('os-instrumentos-mortais-cidade-dos-ossos', 'Os Instrumentos Mortais: Cidade dos Ossos', 2013, 'acao', 'live_action', ['tensa'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('beekeeper-rede-de-vinganca', 'Beekeeper: Rede de Vingança', 2024, 'acao', 'live_action', ['tensa'], ['investigacao'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('lara-croft-tomb-raider-a-origem-da-vida', 'Lara Croft: Tomb Raider - A Origem da Vida', 2003, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('furia-de-titas-2', 'Fúria de Titãs 2', 2012, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('agente-oculto', 'Agente Oculto', 2022, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('007-contra-goldeneye', '007 Contra GoldenEye', 1995, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('no-coracao-do-mar', 'No Coração do Mar', 2015, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('rambo-ii-a-missao', 'Rambo II - A Missão', 1985, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('anjos-da-noite-a-evolucao', 'Anjos da Noite: A Evolução', 2006, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('a-mascara-do-zorro', 'A Máscara do Zorro', 1998, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('inimigo-do-estado', 'Inimigo do Estado', 1998, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', sim, ['critica_social', 'acao_perseguicao']).
filme('deuses-do-egito', 'Deuses do Egito', 2016, 'acao', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('hercules-2014', 'Hércules', 2014, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('indiana-jones-e-a-reliquia-do-destino', 'Indiana Jones e A Relíquia do Destino', 2023, 'acao', 'live_action', ['leve', 'emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('rambo-iv', 'Rambo IV', 2008, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('os-sete-samurais', 'Os Sete Samurais', 1954, 'acao', 'live_action', ['tensa', 'reflexiva'], ['critica_social'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('adrenalina', 'Adrenalina', 2006, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('o-ultimo-mestre-do-ar', 'O Último Mestre do Ar', 2010, 'acao', 'live_action', ['tensa'], ['emocional'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('rambo-ate-o-fim', 'Rambo: Até o Fim', 2019, 'acao', 'live_action', ['tensa', 'emocional'], ['emocional'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('caca-aos-gangsteres', 'Caça aos Gângsteres', 2013, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('desconhecido', 'Desconhecido', 2011, 'acao', 'live_action', ['tensa'], ['aventura', 'investigacao'], 'rapido', sim, ['acao_espionagem']).
filme('sin-city-a-dama-fatal', 'Sin City: A Dama Fatal', 2014, 'acao', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('a-perseguicao', 'A Perseguição', 2012, 'acao', 'live_action', ['tensa', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('47-ronins', '47 Ronins', 2013, 'acao', 'live_action', ['emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('waterworld-o-segredo-das-aguas', 'Waterworld: O Segredo das Águas', 1995, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('sicario-dia-do-soldado', 'Sicário: Dia do Soldado', 2018, 'acao', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-homem-da-mascara-de-ferro', 'O Homem da Máscara de Ferro', 1998, 'acao', 'live_action', ['emocional'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_aventura']).
filme('007-contra-o-satanico-dr-no', '007 Contra o Satânico Dr. No', 1962, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('motoqueiro-fantasma-espirito-de-vinganca', 'Motoqueiro Fantasma: Espírito de Vingança', 2011, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('cacadores-de-emocao', 'Caçadores de Emoção', 1991, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('007-contra-goldfinger', '007 Contra Goldfinger', 1964, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('carga-explosiva-2', 'Carga Explosiva 2', 2005, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('13-horas-os-soldados-secretos-de-benghazi', '13 Horas: Os Soldados Secretos de Benghazi', 2016, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_aventura']).
filme('anjos-da-noite-a-rebeliao', 'Anjos da Noite: A Rebelião', 2009, 'acao', 'live_action', ['tensa', 'reflexiva'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('protegendo-o-inimigo', 'Protegendo o Inimigo', 2012, 'acao', 'live_action', ['tensa'], ['critica_social', 'aventura'], 'rapido', sim, ['critica_social', 'acao_espionagem']).
filme('incontrolavel', 'Incontrolável', 2010, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('007-um-novo-dia-para-morrer', '007: Um Novo Dia para Morrer', 2002, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('twister', 'Twister', 1996, 'acao', 'live_action', ['tensa', 'leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('invasao-ao-servico-secreto', 'Invasão ao Serviço Secreto', 2019, 'acao', 'live_action', ['tensa'], ['investigacao', 'aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('o-protetor-capitulo-final', 'O Protetor: Capítulo Final', 2023, 'acao', 'live_action', ['tensa', 'reflexiva'], ['investigacao'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('linha-de-frente', 'Linha de Frente', 2013, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('o-ultimo-cacador-de-bruxas', 'O Último Caçador de Bruxas', 2015, 'acao', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('maquina-mortifera-2', 'Máquina Mortífera 2', 1989, 'acao', 'live_action', ['tensa', 'leve'], ['aventura', 'investigacao'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('carga-explosiva-3', 'Carga Explosiva 3', 2008, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('a-cacada-ao-outubro-vermelho', 'A Caçada ao Outubro Vermelho', 1990, 'acao', 'live_action', ['tensa'], ['aventura', 'critica_social'], 'rapido', sim, ['critica_social', 'acao_espionagem']).
filme('hitman-assassino-47', 'Hitman: Assassino 47', 2007, 'acao', 'live_action', ['tensa', 'emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('hanna', 'Hanna', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('assassino-a-preco-fixo-2-a-ressurreicao', 'Assassino a Preço Fixo 2 - A Ressurreição', 2016, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('assassino-a-preco-fixo', 'Assassino a Preço Fixo', 2011, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('aquaman-2-o-reino-perdido', 'Aquaman 2: O Reino Perdido', 2023, 'acao', 'live_action', ['leve', 'tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('mulher-gato', 'Mulher-Gato', 2004, 'acao', 'live_action', ['leve'], ['aventura'], 'moderado', nao, ['sem_reviravolta', 'acao_perseguicao']).
filme('robin-hood-o-principe-dos-ladroes', 'Robin Hood: O Príncipe dos Ladrões', 1991, 'acao', 'live_action', ['emocional'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('operacao-fronteira', 'Operação Fronteira', 2019, 'acao', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('monster-hunter', 'Monster Hunter', 2020, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('rambo-iii', 'Rambo III', 1988, 'acao', 'live_action', ['tensa'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_aventura']).
filme('007-o-amanha-nunca-morre', '007: O Amanhã Nunca Morre', 1997, 'acao', 'live_action', ['leve'], ['aventura'], 'rapido', nao, ['sem_reviravolta', 'acao_espionagem']).
filme('covil-de-ladroes', 'Covil de Ladrões', 2018, 'acao', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'moderado', sim, ['critica_social', 'acao_espionagem']).
filme('o-sequestro-do-metro-1-2-3', 'O Sequestro do Metrô 1 2 3', 2009, 'acao', 'live_action', ['tensa'], ['critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'acao_perseguicao']).
filme('bela-vinganca', 'Bela Vingança', 2020, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'critica_social'], 'moderado', sim, ['reviravolta', 'sombrio', 'psicologico', 'critica_social', 'suspense_psicologico']).
filme('senhores-do-crime', 'Senhores do Crime', 2007, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('marcados-para-morrer', 'Marcados Para Morrer', 2012, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'rapido', nao, ['investigativo', 'sombrio', 'ritmo_intenso', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-poder-e-a-lei', 'O Poder e a Lei', 2011, 'suspense', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('o-diabo-de-cada-dia', 'O Diabo de Cada Dia', 2020, 'suspense', 'live_action', ['sombria'], ['critica_social', 'psicologica'], 'lento', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('conclave', 'Conclave', 2024, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['misterio', 'critica_social'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'critica_social', 'suspense_enigmatico']).
filme('a-onda', 'A Onda', 2008, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', nao, ['psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('numero-23', 'Número 23', 2007, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('o-pagamento-final', 'O Pagamento Final', 1993, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('incendios', 'Incêndios', 2010, 'suspense', 'live_action', ['tensa', 'sombria'], ['misterio', 'critica_social'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('um-dia-de-cao', 'Um Dia de Cão', 1975, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('o-beco-do-pesadelo', 'O Beco do Pesadelo', 2021, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'lento', sim, ['reviravolta', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('21-gramas', '21 Gramas', 2003, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['psicologica', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'psicologico', 'suspense_psicologico']).
filme('o-mundo-depois-de-nos', 'O Mundo Depois de Nós', 2023, 'suspense', 'live_action', ['tensa', 'sombria'], ['misterio', 'critica_social'], 'lento', nao, ['misterio_complexo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('irreversivel', 'Irreversível', 2002, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('o-nome-da-rosa', 'O Nome da Rosa', 1986, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('terapia-de-risco', 'Terapia de Risco', 2013, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'psicologico', 'suspense_psicologico']).
filme('os-homens-que-nao-amavam-as-mulheres', 'Os Homens Que Não Amavam as Mulheres', 2009, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('a-empregada', 'A Empregada', 2025, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('alcatraz-fuga-impossivel', 'Alcatraz: Fuga Impossível', 1979, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('o-culpado', 'O Culpado', 2021, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('bom-comportamento', 'Bom Comportamento', 2017, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('ninfomaniaca-volume-2', 'Ninfomaniaca: Volume 2', 2013, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('precisamos-falar-sobre-o-kevin', 'Precisamos Falar Sobre o Kevin', 2011, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('enola-holmes-2', 'Enola Holmes 2', 2022, 'suspense', 'live_action', ['leve'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'ritmo_intenso', 'suspense_investigativo']).
filme('jogo-do-dinheiro', 'Jogo do Dinheiro', 2016, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'critica_social', 'suspense_investigativo']).
filme('enterrado-vivo', 'Enterrado Vivo', 2010, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', sim, ['reviravolta', 'psicologico', 'suspense_psicologico']).
filme('chamada-de-emergencia', 'Chamada de Emergência', 2013, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'suspense_investigativo']).
filme('tempo-de-matar', 'Tempo de Matar', 1996, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'moderado', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('voce-nunca-esteve-realmente-aqui', 'Você Nunca Esteve Realmente Aqui', 2017, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('coringa-delirio-a-dois', 'Coringa: Delírio a Dois', 2024, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['psicologica'], 'lento', nao, ['sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('munique', 'Munique', 2005, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('festim-diabolico', 'Festim Diabólico', 1948, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', nao, ['investigativo', 'sem_reviravolta', 'suspense_investigativo']).
filme('cacada-mortal', 'Caçada Mortal', 2014, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'misterio'], 'rapido', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('a-estrada-perdida', 'A Estrada Perdida', 1997, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'psicologica'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_enigmatico']).
filme('eu-me-importo', 'Eu Me Importo', 2021, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social'], 'moderado', nao, ['sombrio', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('plano-de-voo', 'Plano de Voo', 2005, 'suspense', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'suspense_enigmatico']).
filme('o-assassino', 'O Assassino', 2023, 'suspense', 'live_action', ['sombria', 'tensa'], ['psicologica'], 'moderado', nao, ['sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('vivo-ou-morto-um-misterio-knives-out', 'Vivo ou Morto: Um Mistério Knives Out', 2025, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_investigativo']).
filme('locke', 'Locke', 2014, 'suspense', 'live_action', ['tensa'], ['misterio', 'psicologica'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_enigmatico']).
filme('o-espiao-que-sabia-demais', 'O Espião Que Sabia Demais', 2011, 'suspense', 'live_action', ['tensa', 'sombria'], ['misterio'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('fratura', 'Fratura', 2019, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('amores-brutos', 'Amores Brutos', 2000, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'psicologica'], 'moderado', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('scooby-doo-2-monstros-a-solta', 'Scooby-Doo 2: Monstros à Solta', 2004, 'suspense', 'live_action', ['leve'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('a-noite-das-bruxas', 'A Noite das Bruxas', 2023, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('os-pequenos-vestigios', 'Os Pequenos Vestígios', 2021, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'lento', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('disque-m-para-matar', 'Disque M para Matar', 1954, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'suspense_investigativo']).
filme('o-mundo-imaginario-do-dr-parnassus', 'O Mundo Imaginário do Dr. Parnassus', 2009, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('menina-ma-com', 'Menina Má.Com', 2006, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica'], 'moderado', sim, ['reviravolta', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('vicio-inerente', 'Vício Inerente', 2014, 'suspense', 'live_action', ['reflexiva', 'sombria'], ['misterio', 'investigacao'], 'moderado', nao, ['investigativo', 'misterio_complexo', 'sombrio', 'sem_reviravolta', 'suspense_enigmatico']).
filme('dogville', 'Dogville', 2003, 'suspense', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('o-pentelho', 'O Pentelho', 1996, 'suspense', 'live_action', ['leve'], ['psicologica', 'critica_social'], 'moderado', nao, ['psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('um-ato-de-coragem', 'Um Ato de Coragem', 2002, 'suspense', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('efeito-domino', 'Efeito Dominó', 2008, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'critica_social', 'suspense_investigativo']).
filme('jurado-n-2', 'Jurado Nº2', 2024, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'psicologica'], 'moderado', sim, ['reviravolta', 'investigativo', 'psicologico', 'suspense_investigativo']).
filme('voo-noturno', 'Voo Noturno', 2005, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'suspense_enigmatico']).
filme('so-deus-perdoa', 'Só Deus Perdoa', 2013, 'suspense', 'live_action', ['sombria'], ['misterio', 'psicologica'], 'lento', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_enigmatico']).
filme('o-preco-da-verdade', 'O Preço da Verdade', 2019, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'critica_social'], 'lento', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('rashomon', 'Rashomon', 1950, 'suspense', 'live_action', ['sombria', 'tensa'], ['misterio', 'investigacao'], 'lento', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('pi', 'Pi', 1998, 'suspense', 'live_action', ['reflexiva', 'tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('m-o-vampiro-de-dusseldorf', 'M, o Vampiro de Dusseldorf', 1931, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'psicologica'], 'lento', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_investigativo']).
filme('o-urso-do-po-branco', 'O Urso do Pó Branco', 2023, 'suspense', 'live_action', ['leve', 'tensa'], ['critica_social'], 'rapido', nao, ['ritmo_intenso', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('o-escritor-fantasma', 'O Escritor Fantasma', 2010, 'suspense', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_enigmatico']).
filme('foxcatcher-uma-historia-que-chocou-o-mundo', 'Foxcatcher: Uma História Que Chocou o Mundo', 2014, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'psicologica'], 'lento', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('as-viuvas', 'As Viúvas', 2018, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('traffic-ninguem-sai-limpo', 'Traffic: Ninguém Sai Limpo', 2000, 'suspense', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('jfk-a-pergunta-que-nao-quer-calar', 'JFK: A Pergunta Que Não Quer Calar', 1991, 'suspense', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'moderado', nao, ['investigativo', 'misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('o-homem-da-mafia', 'O Homem da Máfia', 2012, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'lento', nao, ['investigativo', 'sombrio', 'sem_reviravolta', 'suspense_investigativo']).
filme('amaldicoado', 'Amaldiçoado', 2013, 'suspense', 'live_action', ['sombria', 'tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('nem-tudo-e-o-que-parece', 'Nem Tudo é o Que Parece', 2004, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'suspense_investigativo']).
filme('todo-o-dinheiro-do-mundo', 'Todo o Dinheiro do Mundo', 2017, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('um-porto-seguro', 'Um Porto Seguro', 2013, 'suspense', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'suspense_enigmatico']).
filme('a-firma', 'A Firma', 1993, 'suspense', 'live_action', ['tensa'], ['critica_social', 'misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('pressagios-de-um-crime', 'Presságios de um Crime', 2015, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'suspense_investigativo']).
filme('em-transe', 'Em Transe', 2013, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'psicologico', 'suspense_psicologico']).
filme('um-lugar-bem-longe-daqui', 'Um Lugar Bem Longe Daqui', 2022, 'suspense', 'live_action', ['reflexiva'], ['misterio', 'investigacao'], 'lento', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_enigmatico']).
filme('8mm-oito-milimetros', '8mm: Oito Milímetros', 1999, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('marty-supreme', 'Marty Supreme', 2025, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'rapido', nao, ['ritmo_intenso', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('exame', 'Exame', 2009, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('sherlock-a-abominavel-noiva', 'Sherlock: A Abominável Noiva', 2016, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('selvagens', 'Selvagens', 2012, 'suspense', 'live_action', ['tensa', 'sombria'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'critica_social', 'suspense_investigativo']).
filme('na-selva', 'Na Selva', 2017, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'critica_social'], 'moderado', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('armadilha-1999', 'Armadilha', 1999, 'suspense', 'live_action', ['tensa'], ['misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'suspense_enigmatico']).
filme('estrada-sem-lei', 'Estrada Sem Lei', 2019, 'suspense', 'live_action', ['tensa'], ['critica_social', 'investigacao'], 'moderado', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('sem-perdao', 'Sem Perdão', 2017, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'suspense_investigativo']).
filme('dogman', 'Dogman', 2018, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'psicologica'], 'moderado', sim, ['reviravolta', 'sombrio', 'psicologico', 'critica_social', 'suspense_psicologico']).
filme('estou-pensando-em-acabar-com-tudo', 'Estou Pensando em Acabar com Tudo', 2020, 'suspense', 'live_action', ['reflexiva', 'sombria'], ['psicologica', 'misterio'], 'lento', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('o-retrato-de-dorian-gray', 'O Retrato de Dorian Gray', 2009, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('a-vida-de-david-gale', 'A Vida de David Gale', 2003, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['investigacao', 'critica_social'], 'moderado', sim, ['reviravolta', 'investigativo', 'critica_social', 'suspense_investigativo']).
filme('intrigas-de-estado', 'Intrigas de Estado', 2009, 'suspense', 'live_action', ['tensa'], ['misterio', 'critica_social'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('a-mulher-na-janela', 'A Mulher na Janela', 2021, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('margin-call-o-dia-antes-do-fim', 'Margin Call - O Dia Antes do Fim', 2011, 'suspense', 'live_action', ['tensa'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'suspense_enigmatico']).
filme('a-pantera-cor-de-rosa', 'A Pantera Cor-de-Rosa', 2006, 'suspense', 'live_action', ['leve'], ['investigacao'], 'moderado', nao, ['investigativo', 'sem_reviravolta', 'suspense_investigativo']).
filme('antes-de-dormir', 'Antes de Dormir', 2014, 'suspense', 'live_action', ['tensa'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'psicologico', 'suspense_psicologico']).
filme('o-3-homem', 'O 3º Homem', 1949, 'suspense', 'live_action', ['sombria', 'reflexiva'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_enigmatico']).
filme('oldboy-dias-de-vinganca', 'Oldboy: Dias de Vingança', 2013, 'suspense', 'live_action', ['tensa'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'suspense_enigmatico']).
filme('mansao-mal-assombrada', 'Mansão Mal-Assombrada', 2003, 'suspense', 'live_action', ['tensa', 'leve'], ['misterio'], 'moderado', nao, ['misterio_complexo', 'sem_reviravolta', 'suspense_enigmatico']).
filme('tudo-por-justica', 'Tudo Por Justiça', 2013, 'suspense', 'live_action', ['sombria', 'tensa'], ['critica_social', 'investigacao'], 'moderado', nao, ['investigativo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-informante', 'O Informante', 1999, 'suspense', 'live_action', ['tensa'], ['critica_social', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'critica_social', 'suspense_enigmatico']).
filme('todos-os-homens-do-presidente', 'Todos os Homens do Presidente', 1976, 'suspense', 'live_action', ['tensa'], ['misterio', 'critica_social'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('o-garoto-da-casa-ao-lado', 'O Garoto da Casa ao Lado', 2015, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('pacto-de-sangue', 'Pacto de Sangue', 1944, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'sombrio', 'suspense_investigativo']).
filme('tetris', 'Tetris', 2023, 'suspense', 'live_action', ['tensa', 'leve'], ['investigacao', 'critica_social'], 'rapido', nao, ['investigativo', 'ritmo_intenso', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('pisque-duas-vezes', 'Pisque Duas Vezes', 2024, 'suspense', 'live_action', ['tensa', 'sombria'], ['misterio', 'critica_social'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'critica_social', 'suspense_enigmatico']).
filme('os-sete-suspeitos', 'Os Sete Suspeitos', 1985, 'suspense', 'live_action', ['leve'], ['misterio'], 'rapido', sim, ['reviravolta', 'misterio_complexo', 'ritmo_intenso', 'suspense_enigmatico']).
filme('garotas-selvagens', 'Garotas Selvagens', 1998, 'suspense', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_enigmatico']).
filme('panico-na-neve', 'Pânico na Neve', 2010, 'suspense', 'live_action', ['tensa'], ['psicologica'], 'moderado', nao, ['psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('conduta-de-risco', 'Conduta de Risco', 2007, 'suspense', 'live_action', ['tensa'], ['critica_social', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'critica_social', 'suspense_enigmatico']).
filme('inverno-da-alma', 'Inverno da Alma', 2010, 'suspense', 'live_action', ['sombria'], ['critica_social'], 'lento', nao, ['sombrio', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('os-vigaristas', 'Os Vigaristas', 2003, 'suspense', 'live_action', ['tensa', 'leve'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('rebecca-a-mulher-inesquecivel', 'Rebecca, A Mulher Inesquecível', 1940, 'suspense', 'live_action', ['tensa'], ['misterio', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_enigmatico']).
filme('durante-a-tormenta', 'Durante a Tormenta', 2018, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'suspense_enigmatico']).
filme('emilia-perez', 'Emilia Pérez', 2024, 'suspense', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['sombrio', 'psicologico', 'critica_social', 'sem_reviravolta', 'suspense_psicologico']).
filme('mississippi-em-chamas', 'Mississippi em Chamas', 1988, 'suspense', 'live_action', ['tensa', 'sombria'], ['critica_social', 'investigacao'], 'moderado', nao, ['investigativo', 'sombrio', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('o-conselheiro-do-crime', 'O Conselheiro do Crime', 2013, 'suspense', 'live_action', ['sombria'], ['investigacao'], 'moderado', nao, ['investigativo', 'sombrio', 'sem_reviravolta', 'suspense_investigativo']).
filme('elle', 'Elle', 2016, 'suspense', 'live_action', ['sombria'], ['psicologica', 'misterio'], 'moderado', nao, ['misterio_complexo', 'sombrio', 'psicologico', 'sem_reviravolta', 'suspense_psicologico']).
filme('o-contador-2', 'O Contador 2', 2025, 'suspense', 'live_action', ['tensa'], ['investigacao'], 'rapido', sim, ['reviravolta', 'investigativo', 'ritmo_intenso', 'suspense_investigativo']).
filme('armas-na-mesa', 'Armas na Mesa', 2016, 'suspense', 'live_action', ['tensa', 'reflexiva'], ['critica_social'], 'rapido', sim, ['reviravolta', 'ritmo_intenso', 'critica_social', 'suspense_enigmatico']).
filme('retratos-de-uma-obsessao', 'Retratos de Uma Obsessão', 2002, 'suspense', 'live_action', ['tensa', 'sombria'], ['psicologica', 'investigacao'], 'moderado', sim, ['reviravolta', 'investigativo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('seguinte', 'Seguinte', 1999, 'suspense', 'live_action', ['sombria', 'tensa'], ['investigacao', 'psicologica'], 'rapido', sim, ['reviravolta', 'investigativo', 'sombrio', 'ritmo_intenso', 'psicologico', 'suspense_investigativo']).
filme('coracao-selvagem', 'Coração Selvagem', 1990, 'suspense', 'live_action', ['sombria'], ['psicologica', 'misterio'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_psicologico']).
filme('sr-sherlock-holmes', 'Sr. Sherlock Holmes', 2015, 'suspense', 'live_action', ['reflexiva'], ['investigacao', 'misterio'], 'lento', nao, ['investigativo', 'misterio_complexo', 'sem_reviravolta', 'suspense_investigativo']).
filme('beijos-que-matam', 'Beijos Que Matam', 1997, 'suspense', 'live_action', ['tensa'], ['investigacao', 'misterio'], 'moderado', sim, ['reviravolta', 'investigativo', 'misterio_complexo', 'suspense_investigativo']).
filme('a-testemunha', 'A Testemunha', 1985, 'suspense', 'live_action', ['tensa'], ['investigacao', 'critica_social'], 'moderado', nao, ['investigativo', 'critica_social', 'sem_reviravolta', 'suspense_investigativo']).
filme('barton-fink-delirios-de-hollywood', 'Barton Fink: Delírios de Hollywood', 1991, 'suspense', 'live_action', ['reflexiva', 'sombria'], ['misterio', 'psicologica'], 'moderado', sim, ['reviravolta', 'misterio_complexo', 'sombrio', 'psicologico', 'suspense_enigmatico']).
filme('karate-kid-a-hora-da-verdade', 'Karatê Kid: A Hora da Verdade', 1984, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('milagre-na-cela-7', 'Milagre na Cela 7', 2019, 'drama', 'live_action', ['emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('o-patriota', 'O Patriota', 2000, 'drama', 'live_action', ['sombria'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('a-queda-as-ultimas-horas-de-hitler', 'A Queda! As Últimas Horas de Hitler', 2004, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-estrada', 'A Estrada', 2009, 'drama', 'live_action', ['sombria', 'emocional'], ['emocional', 'filosofica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_critica_social']).
filme('steve-jobs', 'Steve Jobs', 2015, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'critica_social'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('invencivel', 'Invencível', 2014, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('invictus', 'Invictus', 2009, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('assassinos-da-lua-das-flores', 'Assassinos da Lua das Flores', 2023, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-franco-atirador', 'O Franco Atirador', 1978, 'drama', 'live_action', ['sombria', 'reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('questao-de-honra', 'Questão de Honra', 1992, 'drama', 'live_action', ['reflexiva', 'leve'], ['critica_social'], 'moderado', sim, ['critica_social', 'drama_critica_social']).
filme('joy-o-nome-do-sucesso', 'Joy: O Nome do Sucesso', 2015, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('se-eu-ficar', 'Se Eu Ficar', 2014, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('straight-outta-compton-a-historia-do-n-w-a', 'Straight Outta Compton: A História do N.W.A.', 2015, 'drama', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('garota-interrompida', 'Garota, Interrompida', 1999, 'drama', 'live_action', ['emocional'], ['psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('babel', 'Babel', 2006, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('magnolia', 'Magnólia', 1999, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'lento', sim, ['emocional', 'critica_social', 'drama_relacoes']).
filme('roma', 'Roma', 2018, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'critica_social'], 'lento', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('lincoln', 'Lincoln', 2012, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('perfume-de-mulher', 'Perfume de Mulher', 1992, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('a-grande-jogada', 'A Grande Jogada', 2017, 'drama', 'live_action', ['leve'], ['critica_social'], 'rapido', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('spring-breakers-garotas-perigosas', 'Spring Breakers: Garotas Perigosas', 2013, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-homem-elefante', 'O Homem Elefante', 1980, 'drama', 'live_action', ['reflexiva', 'sombria'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('elvis', 'Elvis', 2022, 'drama', 'live_action', ['emocional'], ['emocional', 'psicologica'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('crash-no-limite', 'Crash: No Limite', 2005, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social', 'emocional'], 'moderado', sim, ['emocional', 'critica_social', 'drama_critica_social']).
filme('o-ultimo-duelo', 'O Último Duelo', 2021, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('thelma-louise', 'Thelma & Louise', 1991, 'drama', 'live_action', ['reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('o-chamado-da-floresta', 'O Chamado da Floresta', 2020, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('druk-mais-uma-rodada', 'Druk: Mais Uma Rodada', 2020, 'drama', 'live_action', ['reflexiva', 'emocional'], ['psicologica', 'emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('rocky-balboa', 'Rocky Balboa', 2006, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('cacadores-de-obras-primas', 'Caçadores de Obras-Primas', 2014, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('return-2011', 'Return', 2011, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'psicologica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('em-busca-da-terra-do-nunca', 'Em Busca da Terra do Nunca', 2004, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('meu-pai', 'Meu Pai', 2020, 'drama', 'live_action', ['emocional', 'sombria'], ['psicologica', 'emocional'], 'lento', sim, ['emocional', 'drama_relacoes']).
filme('erin-brockovich-uma-mulher-de-talento', 'Erin Brockovich: Uma Mulher de Talento', 2000, 'drama', 'live_action', ['leve'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('cavalo-de-guerra', 'Cavalo de Guerra', 2011, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('ninfomaniaca-volume-1', 'Ninfomaníaca: Volume 1', 2013, 'drama', 'live_action', ['reflexiva', 'sombria'], ['psicologica', 'filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_relacoes']).
filme('blue-jasmine', 'Blue Jasmine', 2013, 'drama', 'live_action', ['sombria', 'emocional'], ['emocional', 'psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('mestre-dos-mares-o-lado-mais-distante-do-mundo', 'Mestre dos Mares: O Lado Mais Distante do Mundo', 2003, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('vice', 'Vice', 2018, 'drama', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-rei', 'O Rei', 2019, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('alianca-do-crime', 'Aliança do Crime', 2015, 'drama', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('a-sociedade-da-neve', 'A Sociedade da Neve', 2023, 'drama', 'live_action', ['emocional', 'sombria'], ['emocional', 'filosofica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('grandes-olhos', 'Grandes Olhos', 2014, 'drama', 'live_action', ['leve', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('gran-turismo-de-jogador-a-corredor', 'Gran Turismo: De Jogador a Corredor', 2023, 'drama', 'live_action', ['emocional'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('pegando-fogo', 'Pegando Fogo', 2015, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('ted-bundy-a-irresistivel-face-do-mal', 'Ted Bundy: A Irresistível Face do Mal', 2019, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('alexandre', 'Alexandre', 2004, 'drama', 'live_action', ['emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('rocky-v', 'Rocky V', 1990, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('quatro-vidas-de-um-cachorro', 'Quatro Vidas de um Cachorro', 2017, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-minimo-para-viver', 'O Mínimo para Viver', 2017, 'drama', 'live_action', ['emocional'], ['emocional', 'psicologica'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('antes-que-eu-va', 'Antes Que Eu Vá', 2017, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-ultimo-dos-moicanos', 'O Último dos Moicanos', 1992, 'drama', 'live_action', ['sombria'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('casa-gucci', 'Casa Gucci', 2021, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('shame', 'Shame', 2011, 'drama', 'live_action', ['sombria', 'reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-setimo-selo', 'O Sétimo Selo', 1957, 'drama', 'live_action', ['reflexiva', 'sombria'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('os-7-de-chicago', 'Os 7 de Chicago', 2020, 'drama', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-travessia', 'A Travessia', 2015, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('alem-da-linha-vermelha', 'Além da Linha Vermelha', 1998, 'drama', 'live_action', ['reflexiva'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_superacao']).
filme('o-mestre', 'O Mestre', 2012, 'drama', 'live_action', ['reflexiva', 'sombria'], ['filosofica', 'psicologica'], 'lento', nao, ['sem_reviravolta', 'drama_relacoes']).
filme('os-infratores', 'Os Infratores', 2012, 'drama', 'live_action', ['sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-arvore-da-vida', 'A Árvore da Vida', 2011, 'drama', 'live_action', ['reflexiva'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_relacoes']).
filme('silencio', 'Silêncio', 2016, 'drama', 'live_action', ['reflexiva', 'sombria'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('coach-carter-treino-para-a-vida', 'Coach Carter: Treino para a Vida', 2005, 'drama', 'live_action', ['leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('gloria-feita-de-sangue', 'Glória Feita de Sangue', 1957, 'drama', 'live_action', ['sombria'], ['psicologica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-grande-beleza', 'A Grande Beleza', 2013, 'drama', 'live_action', ['reflexiva'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('para-sempre-alice', 'Para Sempre Alice', 2014, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('barry-lyndon', 'Barry Lyndon', 1975, 'drama', 'live_action', ['reflexiva'], ['critica_social', 'filosofica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('napoleao', 'Napoleão', 2023, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica'], 'moderado', nao, ['sem_reviravolta', 'drama_relacoes']).
filme('hotel-ruanda', 'Hotel Ruanda', 2004, 'drama', 'live_action', ['emocional'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('soldado-anonimo', 'Soldado Anônimo', 2005, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-escandalo', 'O Escândalo', 2019, 'drama', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('quase-famosos', 'Quase Famosos', 2000, 'drama', 'live_action', ['emocional', 'leve'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('bling-ring-a-gangue-de-hollywood', 'Bling Ring: A Gangue de Hollywood', 2013, 'drama', 'live_action', ['reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('dois-papas', 'Dois Papas', 2019, 'drama', 'live_action', ['reflexiva', 'leve'], ['filosofica', 'emocional'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('sete-anos-no-tibet', 'Sete Anos no Tibet', 1997, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('projeto-florida', 'Projeto Flórida', 2017, 'drama', 'live_action', ['reflexiva', 'sombria'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('amor-bandido', 'Amor Bandido', 2013, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('z-a-cidade-perdida', 'Z: A Cidade Perdida', 2017, 'drama', 'live_action', ['reflexiva'], ['critica_social'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('duelo-de-titas', 'Duelo de Titãs', 2000, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('o-mordomo-da-casa-branca', 'O Mordomo da Casa Branca', 2013, 'drama', 'live_action', ['emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('crepusculo-dos-deuses', 'Crepúsculo dos Deuses', 1950, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social', 'psicologica'], 'moderado', sim, ['critica_social', 'drama_critica_social']).
filme('ataque-dos-caes', 'Ataque dos Cães', 2021, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica'], 'lento', sim, ['drama_relacoes']).
filme('desafio-no-bronx', 'Desafio no Bronx', 1993, 'drama', 'live_action', ['sombria'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('maria-antonieta', 'Maria Antonieta', 2006, 'drama', 'live_action', ['reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('inside-llewyn-davis-balada-de-um-homem-comum', 'Inside Llewyn Davis: Balada de um Homem Comum', 2013, 'drama', 'live_action', ['reflexiva', 'sombria'], ['filosofica'], 'lento', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('tempo-de-despertar', 'Tempo de Despertar', 1990, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('o-sol-e-para-todos', 'O Sol é Para Todos', 1962, 'drama', 'live_action', ['emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-som-do-silencio', 'O Som do Silêncio', 2020, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'psicologica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('querido-menino', 'Querido Menino', 2018, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_critica_social']).
filme('fugindo-do-inferno', 'Fugindo do Inferno', 1963, 'drama', 'live_action', ['sombria', 'leve'], ['emocional', 'critica_social'], 'rapido', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('king-richard-criando-campeas', 'King Richard: Criando Campeãs', 2021, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('os-fabelmans', 'Os Fabelmans', 2022, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('o-som-do-coracao', 'O Som do Coração', 2007, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('mommy', 'Mommy', 2014, 'drama', 'live_action', ['emocional', 'reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('o-assassinato-de-jesse-james-pelo-covarde-robert-ford', 'O Assassinato de Jesse James Pelo Covarde Robert Ford', 2007, 'drama', 'live_action', ['reflexiva', 'sombria'], ['filosofica', 'psicologica'], 'lento', nao, ['sem_reviravolta', 'drama_critica_social']).
filme('malena', 'Malèna', 2000, 'drama', 'live_action', ['reflexiva', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('um-limite-entre-nos', 'Um Limite Entre Nós', 2016, 'drama', 'live_action', ['emocional'], ['psicologica', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('tudo-pelo-poder', 'Tudo Pelo Poder', 2011, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social'], 'moderado', sim, ['critica_social', 'drama_critica_social']).
filme('zona-de-interesse', 'Zona de Interesse', 2023, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'filosofica'], 'lento', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('alfa', 'Alfa', 2018, 'drama', 'live_action', ['emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('o-caso-richard-jewell', 'O Caso Richard Jewell', 2019, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('ladroes-de-bicicleta', 'Ladrões de Bicicleta', 1948, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('um-homem-entre-gigantes', 'Um Homem Entre Gigantes', 2015, 'drama', 'live_action', ['leve'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('livre', 'Livre', 2014, 'drama', 'live_action', ['reflexiva', 'emocional'], ['emocional', 'filosofica'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('o-barco-inferno-no-mar', 'O Barco: Inferno no Mar', 1981, 'drama', 'live_action', ['sombria'], ['critica_social', 'psicologica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-ultima-noite', 'A Última Noite', 2002, 'drama', 'live_action', ['reflexiva'], ['emocional', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_relacoes']).
filme('jobs', 'Jobs', 2013, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('hooligans', 'Hooligans', 2005, 'drama', 'live_action', ['sombria'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('j-edgar', 'J. Edgar', 2011, 'drama', 'live_action', ['sombria', 'emocional'], ['critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('monster-desejo-assassino', 'Monster: Desejo Assassino', 2003, 'drama', 'live_action', ['sombria', 'emocional'], ['psicologica', 'critica_social'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('mogli-entre-dois-mundos', 'Mogli: Entre Dois Mundos', 2018, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('homens-de-honra', 'Homens de Honra', 2000, 'drama', 'live_action', ['leve', 'emocional'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('oito-e-meio', 'Oito e Meio', 1963, 'drama', 'live_action', ['reflexiva', 'emocional'], ['filosofica', 'emocional'], 'lento', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('hostis', 'Hostis', 2017, 'drama', 'live_action', ['reflexiva', 'sombria'], ['critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('uma-licao-de-amor', 'Uma Lição de Amor', 2001, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('gandhi', 'Gandhi', 1982, 'drama', 'live_action', ['sombria', 'reflexiva'], ['critica_social', 'filosofica'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
filme('kramer-vs-kramer', 'Kramer vs. Kramer', 1979, 'drama', 'live_action', ['emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('butch-cassidy', 'Butch Cassidy', 1969, 'drama', 'live_action', ['emocional', 'leve'], ['emocional'], 'rapido', nao, ['emocional', 'sem_reviravolta', 'drama_relacoes']).
filme('luta-por-justica', 'Luta por Justiça', 2019, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-entrega', 'A Entrega', 2014, 'drama', 'live_action', ['sombria'], ['critica_social', 'psicologica'], 'lento', sim, ['critica_social', 'drama_critica_social']).
filme('air-a-historia-por-tras-do-logo', 'Air: A História Por Trás do Logo', 2023, 'drama', 'live_action', ['leve', 'emocional'], ['emocional'], 'moderado', nao, ['emocional', 'sem_reviravolta', 'drama_superacao']).
filme('quando-duas-mulheres-pecam', 'Quando Duas Mulheres Pecam', 1966, 'drama', 'live_action', ['reflexiva', 'sombria'], ['psicologica', 'filosofica'], 'lento', sim, ['drama_relacoes']).
filme('milk-a-voz-da-igualdade', 'Milk: A Voz da Igualdade', 2008, 'drama', 'live_action', ['emocional', 'reflexiva'], ['critica_social', 'emocional'], 'moderado', nao, ['emocional', 'critica_social', 'sem_reviravolta', 'drama_critica_social']).
filme('a-ponte-do-rio-kwai', 'A Ponte do Rio Kwai', 1957, 'drama', 'live_action', ['sombria', 'reflexiva'], ['psicologica', 'critica_social'], 'moderado', nao, ['critica_social', 'sem_reviravolta', 'drama_superacao']).
