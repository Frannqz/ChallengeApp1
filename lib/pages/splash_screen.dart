import 'package:challenge/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/pages/pages.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(
      backgroundColor: Color.fromRGBO(253, 69, 86, 1),
      logo: Image.asset(
          "images/text_logo.png"), // Ruta relativa a la carpeta de assets
      done: Done(const HomePage(),
          animationDuration: const Duration(milliseconds: 300)),
    );
  }
}
