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
      'Forjada en el corazón de México, Reyna domina el combate singular y destaca con cada muerte que logra. Su capacidad sólo está limitada por su habilidad bruta, lo que la hace muy dependiente del rendimiento.',
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
];
