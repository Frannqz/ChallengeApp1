import 'package:challenge/models/data.dart';
import 'package:challenge/pages/details_agent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Valorant Agents",
          style:
              GoogleFonts.novaSquare(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              //Contenedor de nav "Roles"
              margin: const EdgeInsets.only(top: 5),
              width: size.width,
              height: size.height * 0.06,
              child: Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                      //Tamaño de Navegacion "Roles"
                      width: size.width,
                      height: size.height * 0.04,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: listRoles.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 10 : 23, top: 7),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current =
                                        index; //Actualizo estado del indice seleccionado
                                  });
                                },
                                child: Text(
                                  listRoles[index],
                                  style: GoogleFonts.ubuntu(
                                    fontSize: current == index
                                        ? 16 //Cuando este "activo" letra con mas size
                                        : 14,
                                    fontWeight: current == index
                                        ? FontWeight.w400
                                        : FontWeight.w300,
                                    color: current == index
                                        ? const Color.fromRGBO(189, 57, 68, 1)
                                        : Colors
                                            .black, // Color del texto activo
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  AnimatedPositioned(
                    curve: Curves.fastLinearToSlowEaseIn,
                    bottom: 0,
                    left: changePositionedOfLine(),
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedContainer(
                      margin: const EdgeInsets.only(left: 10),
                      width: changeContainerWidth(),
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
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.3),
              child: Text(
                "${listRoles[current]} Tab Content",
                style: GoogleFonts.ubuntu(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             color: Color.fromARGB(255, 12, 30, 53),
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Positioned(
//             // LOGO
//             top: 30,
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Image.asset(
//                 'images/logo.png',
//                 fit: BoxFit.contain, // Ajuste de la imagen
//                 height: 60, // Ajusta el tamaño de la imagen
//               ),
//             ),
//           ),
//           Positioned(
//             // Lista de roles
//             top: 120, // Ajusta la posición vertical según sea necesario
//             left: 0, // Ajusta la posición horizontal según sea necesario
//             right: 0, // Ajusta la posición horizontal según sea necesario
//             child: SizedBox(
//               height: 30,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30.0),
//                 child: Row(
//                   children: List.generate(
//                     listRoles.length,
//                     (index) => Padding(
//                       padding: const EdgeInsets.only(right: 10.0),
//                       child: Text(
//                         listRoles[index],
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Color.fromRGBO(253, 69, 86, 1),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned.fill(
//             // Columna para alinear el botón en el centro
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   child: const Text('Abrir agentes'),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const DetailsAgent(),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }