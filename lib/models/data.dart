import 'package:challenge/models/agents.dart';

final listRoles = ['Duelistas', 'Iniciadores', 'Controladores', 'Centinelas'];
int current = 0;

final listAgents = [
  Agents('Jett', 'Corea del Sur', 'description',
      [ImageAgents('images/agents/jett.png')]),
  Agents('name', 'country', 'description',
      [ImageAgents('images/agents/jett.png')]),
  Agents(
      'name', 'country', 'description', [ImageAgents('images/agents/jett.png')])
];
