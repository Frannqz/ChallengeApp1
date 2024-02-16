import 'package:challenge/models/agents.dart';

final listRoles = ['Duelistas', 'Iniciadores', 'Controladores', 'Centinelas'];
int current = 0;

//Pixeles de inicio de linea
double changePositionedOfLine() {
  switch (current) {
    case 0:
      return 0;
    case 1:
      return 80;
    case 2:
      return 175;
    case 3:
      return 290;
    default:
      return 0;
  }
}

//Pixeles de ancho de linea
double changeContainerWidth() {
  switch (current) {
    case 0:
      return 70;
    case 1:
      return 83;
    case 2:
      return 106;
    case 3:
      return 80;
    default:
      return 0;
  }
}

final listAgents = [
  Agents('Jett', 'Corea del Sur', 'description',
      [ImageAgents('images/agents/jett.png')]),
  Agents('name', 'country', 'description',
      [ImageAgents('images/agents/jett.png')]),
  Agents(
      'name', 'country', 'description', [ImageAgents('images/agents/jett.png')])
];
