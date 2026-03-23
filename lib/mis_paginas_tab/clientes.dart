import 'package:flutter/material.dart';

class ClientesPage extends StatelessWidget {
  const ClientesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/JazminAnaya/ACT-4-IAM-UII-Tapbar-Cinepolis-Valtierra/refs/heads/main/cliente.jpg'),
    );
  }
}