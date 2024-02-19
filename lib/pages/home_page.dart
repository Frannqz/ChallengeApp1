import 'package:challenge/models/agents.dart';
import 'package:challenge/models/data.dart';
import 'package:challenge/widgets/card_agent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int current; // Variable para el índice actual seleccionado

  @override
  void initState() {
    super.initState();
    current = 0; // Inicialización del índice actual
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 25.0),
          child: Text(
            "Valorant Agents",
            style: GoogleFonts.novaSquare(
              fontSize: 27,
              color: const Color.fromRGBO(189, 57, 68, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: _buildBody(size),
    );
  }

  Widget _buildBody(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          _buildRolesNavigation(size),
          Center(
            child: _bodyAgent(context: context),
          ),
          const SizedBox(height: 15), // Espacio entre cardBodyAgent y logo
          GestureDetector(
            onTap: () {
              _mostrarInfoFranco(context);
            },
            child: Image.asset(
              'images/logo.png',
              width: 150,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRolesNavigation(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 15),
      width: size.width, //Ancho = ancho de dispositivo
      height: size.height * 0.06, //Altura proporcional al alto de dispositivo
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              width: size.width,
              height: size.height * 0.04,
              child: _buildRolesList(size),
            ),
          ),
          AnimatedPositioned(
            //Posicionamiento animado de linea roja
            curve: Curves.fastLinearToSlowEaseIn,
            bottom: 12, //Distancia desde la parte inferior
            left: _changePositionedOfLine(), //Posición horizontal de línea
            duration: const Duration(milliseconds: 500),
            child: AnimatedContainer(
              //Linea roja
              margin: const EdgeInsets.only(left: 10),
              width: _changeContainerWidth(),
              height: size.height * 0.008,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(189, 57, 68, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastLinearToSlowEaseIn,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRolesList(Size size) {
    return ListView.builder(
      //Constructor de la lista de roles
      physics: const BouncingScrollPhysics(), //Desplazamiento de rebote
      scrollDirection: Axis.horizontal,
      itemCount: listRoles.length, //No total de roles
      itemBuilder: (context, index) {
        return Padding(
          //Manipular el menu de roles
          padding: EdgeInsets.only(
              left: index == 0 ? 35 : 25, top: 7), //Espaciado entre elementos
          child: GestureDetector(
            onTap: () {
              setState(() {
                current = index; //Actualizo estado del índice seleccionado
              });
            },
            child: Text(
              //Mostrar el rol
              listRoles[index], //Recorre los nombres
              style: GoogleFonts.ubuntu(
                fontSize: current == index ? 16 : 14,
                fontWeight:
                    current == index ? FontWeight.w400 : FontWeight.w300,
                color: current == index
                    ? const Color.fromRGBO(189, 57, 68, 1)
                    : Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }

//Pixeles de inicio de linea
  double _changePositionedOfLine() {
    switch (current) {
      case 0:
        return 25;
      case 1:
        return 100;
      case 2:
        return 190;
      case 3:
        return 300;
      default:
        return 0;
    }
  }

//Pixeles de ancho de linea
  double _changeContainerWidth() {
    switch (current) {
      case 0:
        return 65;
      case 1:
        return 77;
      case 2:
        return 99;
      case 3:
        return 70;
      default:
        return 0;
    }
  }

  _mostrarInfoFranco(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Desarrollada por Frannqz"),
          content: const Text(
              "Aplicación para conocer personajes del videojuego de Riot Games: Valorant."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }

  Widget _bodyAgent({required BuildContext context}) {
    // Filtrar la lista de agentes por el rol seleccionado
    List<Agents> filteredAgents =
        listAgents.where((agent) => agent.role == listRoles[current]).toList();

    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.66,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemCount: filteredAgents.length,
        itemBuilder: (_, index) {
          return CardAgents(
            width: MediaQuery.of(context).size.width * 0.8, //Ancho de la card
            height: MediaQuery.of(context).size.height * 0.8, //Alto de la card
            agents: filteredAgents[
                index], // Pasar el agente correspondiente al widget CardAgents
          );
        },
      ),
    );
  }
}
