import 'package:challenge/models/data.dart';
import 'package:challenge/pages/details_agent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 12, 30, 53),
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            // LOGO
            top: 30,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.contain, // Ajuste de la imagen
                height: 60, // Ajusta el tamaño de la imagen
              ),
            ),
          ),
          Positioned(
            // Lista de roles
            top: 120, // Ajusta la posición vertical según sea necesario
            left: 0, // Ajusta la posición horizontal según sea necesario
            right: 0, // Ajusta la posición horizontal según sea necesario
            child: SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: List.generate(
                    listRoles.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        listRoles[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(253, 69, 86, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            // Columna para alinear el botón en el centro
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Abrir agentes'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsAgent(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
