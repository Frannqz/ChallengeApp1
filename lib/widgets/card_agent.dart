import 'package:flutter/material.dart';

class CardAgents extends StatelessWidget {
  final double width;
  final double height;

  const CardAgents({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null ? 200 : width,
      height: height == null ? 300 : height,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(54, 73, 102, 1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black12.withOpacity(0.3),
                blurRadius: 05,
                spreadRadius: 03)
          ]),
    );
  }
}
