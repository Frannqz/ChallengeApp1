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
          Image.asset(
            'images/logo.png',
            width: 150,
          ),
        ],
      ),
    );
  }

  Widget _buildRolesNavigation(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 15),
      width: size.width,
      height: size.height * 0.06,
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
            curve: Curves.fastLinearToSlowEaseIn,
            bottom: 12,
            left: _changePositionedOfLine(),
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
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: listRoles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 10 : 23, top: 7),
          child: GestureDetector(
            onTap: () {
              setState(() {
                current = index; //Actualizo estado del índice seleccionado
              });
            },
            child: Text(
              listRoles[index],
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
  double _changeContainerWidth() {
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

  _bodyAgent({required BuildContext context}) => Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.66,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.9),
          itemCount: 4,
          itemBuilder: (_, index) {
            return CardAgents(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8);
          },
        ),
      );
}
