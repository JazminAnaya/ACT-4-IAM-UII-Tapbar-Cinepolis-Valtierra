import 'package:flutter/material.dart';

class AlimentosPage extends StatelessWidget {
  const AlimentosPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/JazminAnaya/ACT-4-IAM-UII-Tapbar-Cinepolis-Valtierra/refs/heads/main/alimentos.jfif'),
    );
  }
}