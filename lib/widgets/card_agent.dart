import 'package:flutter/material.dart';
import 'package:challenge/models/agents.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAgents extends StatelessWidget {
  final double width;
  final double height;
  final Agents agents; // Nuevo parámetro

  const CardAgents({
    Key? key,
    required this.width,
    required this.height,
    required this.agents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: width == null ? 200 : width,
      height: height == null ? 300 : height,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(54, 73, 102, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.3),
            blurRadius: 05,
            spreadRadius: 03,
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                agents.name.toUpperCase(),
                style: GoogleFonts.novaSquare(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            Image.asset(
              agents.listAgents[0].image,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                agents.country,
                style: GoogleFonts.ubuntu(color: Colors.white),
              ),
            ),
            Text(
              agents.description,
              style: GoogleFonts.ubuntu(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
