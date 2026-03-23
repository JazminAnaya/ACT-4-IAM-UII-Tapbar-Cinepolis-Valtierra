import 'package:flutter/material.dart';

class PeliculasPage extends StatelessWidget {
  const PeliculasPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/JazminAnaya/ACT-4-IAM-UII-Tapbar-Cinepolis-Valtierra/refs/heads/main/peliculas.jfif'),
    );
  }
}