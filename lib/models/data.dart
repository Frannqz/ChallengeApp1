import 'package:challenge/models/agents.dart';

final listRoles = ['Duelistas', 'Iniciadores', 'Controladores', 'Centinelas'];
int current = 0;

final listAgents = [
  Agents(
      'Jett',
      'Corea del Sur',
      'En representación de su país de origen, Corea del Sur, el estilo de lucha ágil y evasivo de Jett le permite asumir riesgos que nadie más puede. Ella corre en círculos alrededor de cada escaramuza, cortando a los enemigos antes de que sepan qué los golpeó.',
      [ImageAgents('images/agents/jett.png')],
      'Duelistas'),
  Agents(
      'Reyna',
      'México',
      'Forjada en el corazón de México, Reyna domina el combate singular y destaca con cada muerte que logra.',
      [ImageAgents('images/agents/reyna.png')],
      'Duelistas'),
  Agents(
      'Phoenix',
      'Reino Unido',
      'Originario del Reino Unido, el poder estelar de Phoenix brilla en su estilo de lucha, encendiendo el campo de batalla con destellos y llamaradas. Ya sea que tenga respaldo o no, se apresura a pelear en sus propios términos.',
      [ImageAgents('images/agents/phoenix.png')],
      'Duelistas'),
  Agents(
      'Yoru',
      'Japón',
      'Yoru, nativo de Japón, abre agujeros en la realidad para infiltrarse en las líneas enemigas sin ser visto. Utilizando el engaño y la agresión en igual medida, logra atrapar a cada objetivo antes de que sepan dónde mirar.',
      [ImageAgents('images/agents/yoru.png')],
      'Duelistas'),
  Agents(
      'Iso',
      'China',
      'El reparador chino a sueldo Iso entra en un estado de flujo para desmantelar a la oposición. Reconfigurando la energía ambiental en protección a prueba de balas, avanza concentrado hacia su próximo duelo a muerte.',
      [ImageAgents('images/agents/iso.png')],
      'Duelistas'),
  Agents(
      'Raze',
      'Brazil',
      'Raze sale disparada de Brasil con su gran personalidad y sus armas pesadas. Con su estilo de juego de traumatismo contundente, se destaca a la hora de expulsar a enemigos atrincherados y despejar espacios reducidos con una generosa dosis de "boom".',
      [ImageAgents('images/agents/raze.png')],
      'Duelistas'),
  Agents(
      'Neon',
      'Flipinas',
      'La agente filipina Neon avanza a velocidades impactantes, descargando ráfagas de radiación bioeléctrica tan rápido como su cuerpo las genera. Ella corre hacia adelante para tomar a los enemigos con la guardia baja y luego los derriba más rápido que un rayo.',
      [ImageAgents('images/agents/neon.png')],
      'Duelistas'),
  Agents(
      'Viper',
      'U.S.A',
      'La química estadounidense Viper despliega una serie de dispositivos químicos venenosos para controlar el campo de batalla y asfixiar la visión del enemigo. Si las toxinas no matan a su presa, sus juegos mentales seguramente lo harán.',
      [ImageAgents('images/agents/viper.png')],
      'Controladores'),
  Agents(
      'Omen',
      'Shadows',
      'Omen, un fantasma de un recuerdo, caza en las sombras. Deja ciegos a los enemigos, se teletransporta por el campo y luego deja que la paranoia se apodere de él mientras su enemigo lucha por descubrir dónde podría atacar a continuación.',
      [ImageAgents('images/agents/omen.png')],
      'Controladores'),
  Agents(
      'Astra',
      'Ghana',
      'La agente ghanesa Astra aprovecha las energías del cosmos para remodelar los campos de batalla a su antojo. Con pleno dominio de su forma astral y talento para una profunda previsión estratégica, siempre está eones por delante del próximo movimiento de su enemigo.',
      [ImageAgents('images/agents/astra.png')],
      'Controladores'),
  Agents(
      'Brimstone',
      'U.S.A',
      'El arsenal orbital de Brimstone, procedente de EE. UU., garantiza que su equipo siempre tenga la ventaja. Su capacidad para brindar utilidad de manera precisa y segura lo convierte en el comandante en el terreno inigualable.',
      [ImageAgents('images/agents/brimstone.png')],
      'Controladores'),
  Agents(
      'Harbor',
      'India',
      'Proveniente de la costa de la India, Harbour irrumpe en el campo blandiendo tecnología antigua y dominando el agua. Desata rápidos espumosos y olas aplastantes para proteger a sus aliados o golpear a quienes se le oponen.',
      [ImageAgents('images/agents/harbor.png')],
      'Controladores'),
  Agents(
      'Sage',
      'China',
      'Sage, bastión de China, crea seguridad para ella y su equipo dondequiera que vaya. Capaz de revivir a amigos caídos y evitar ataques contundentes, proporciona un centro de calma en un campo de batalla infernal.',
      [ImageAgents('images/agents/sage.png')],
      'Centinelas'),
  Agents(
      'Cypher',
      'Marruecos',
      'Cypher, el intermediario de información marroquí, es una red de vigilancia unipersonal que vigila cada movimiento del enemigo. Ningún secreto está a salvo. Ninguna maniobra pasa desapercibida. Cypher siempre está mirando.',
      [ImageAgents('images/agents/cypher.png')],
      'Centinelas'),
  Agents(
      'Chamber',
      'Francia',
      'Bien vestido y bien armado, el diseñador de armas francés Chamber expulsa a los agresores con una precisión mortal. Aprovecha su arsenal personalizado para mantener la línea y eliminar enemigos desde lejos, con una contingencia creada para cada plan.',
      [ImageAgents('images/agents/chamber.png')],
      'Centinelas'),
  Agents(
      'Deadlock',
      'Noruega',
      'La agente noruega Deadlock despliega una serie de nanocables de última generación para proteger el campo de batalla incluso del asalto más letal. Nadie escapa a su vigilante vigilancia ni sobrevive a su inquebrantable ferocidad.',
      [ImageAgents('images/agents/deadlock.png')],
      'Centinelas'),
  Agents(
      'Killjoy',
      'Alemania',
      'Killjoy, el genio de Alemania, asegura sin esfuerzo posiciones clave en el campo de batalla con su arsenal de inventos. Si su daño no elimina a sus enemigos, la desventaja que brindan sus robots los acabará rápidamente.',
      [ImageAgents('images/agents/killjoy.png')],
      'Centinelas'),
  Agents(
      'Sova',
      'Rusia',
      'Nacido del eterno invierno de la tundra rusa, Sova rastrea, encuentra y elimina enemigos con despiadada eficiencia y precisión. Su arco personalizado y sus increíbles habilidades de exploración garantizan que incluso si corres, no podrás esconderte.',
      [ImageAgents('images/agents/sova.png')],
      'Iniciadores'),
  Agents(
      'Breach',
      'Suecia',
      'El biónico Breach dispara poderosas ráfagas cinéticas dirigidas para despejar agresivamente un camino a través del terreno enemigo. El daño y los trastornos que inflige garantizan que ninguna pelea sea justa.',
      [ImageAgents('images/agents/breach.png')],
      'Iniciadores'),
  Agents(
      'Fade',
      'Turquia',
      'La cazarrecompensas turca Fade desata el poder de la cruda pesadilla para apoderarse de los secretos del enemigo. En sintonía con el terror mismo, caza objetivos y revela sus miedos más profundos antes de aplastarlos en la oscuridad.',
      [ImageAgents('images/agents/fade.png')],
      'Iniciadores'),
  Agents(
      'Gekko',
      'U.S.A',
      'Gekko el Angeleno lidera un grupo muy unido de criaturas calamitosas. Sus amigos se lanzaron hacia adelante, dispersando a los enemigos fuera del camino, con Gekko persiguiéndolos para reagruparse y regresar.',
      [ImageAgents('images/agents/gekko.png')],
      'Iniciadores'),
  Agents(
      'Kay/o',
      'Robot',
      'KAY/O es una máquina de guerra construida con un único propósito: neutralizar los radiantes. Su poder para suprimir las habilidades enemigas desmantela la capacidad de sus oponentes para defenderse, asegurándoles a él y a sus aliados la ventaja definitiva.',
      [ImageAgents('images/agents/kayo.png')],
      'Iniciadores'),
  Agents(
      'Skye',
      'Australia',
      'Originaria de Australia, Skye y su banda de bestias abren camino a través de territorio hostil. Con sus creaciones obstaculizando al enemigo y su poder para curar a otros, el equipo es más fuerte y más seguro al lado de Skye.',
      [ImageAgents('images/agents/skye.png')],
      'Iniciadores')
];
