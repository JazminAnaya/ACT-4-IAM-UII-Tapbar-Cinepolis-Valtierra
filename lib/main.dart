import 'package:flutter/material.dart';
import 'mis_paginas_tab/peliculas.dart';
import 'mis_paginas_tab/sucursales.dart';
import 'mis_paginas_tab/alimentos.dart';
import 'mis_paginas_tab/empleados.dart';
import 'mis_paginas_tab/clientes.dart';

void main() => runApp(const CinepolisApp());

class CinepolisApp extends StatelessWidget {
  const CinepolisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinépolis Valtierra',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Definición de rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaPrincipal(),
        '/peliculas': (context) => const PeliculasPage(),
        '/sucursales': (context) => const SucursalesPage(),
        '/alimentos': (context) => const AlimentosPage(),
        '/empleados': (context) => const EmpleadosPage(),
        '/clientes': (context) => const ClientesPage(),
      },
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cinépolis Valtierra', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xFF003399), // Azul Rey
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            PeliculasPage(),
            SucursalesPage(),
            AlimentosPage(),
            EmpleadosPage(),
            ClientesPage(),
          ],
        ),
        bottomNavigationBar: Container(
          color: const Color(0xFF003399), // Azul Rey
          child: const TabBar(
            labelColor: Colors.yellow, // Amarillo para activo
            unselectedLabelColor: Colors.white, // Blanco para inactivo
            indicatorColor: Colors.yellow,
            tabs: [
              Tab(icon: Icon(Icons.movie), text: 'Cine'),
              Tab(icon: Icon(Icons.location_on), text: 'Sedes'),
              Tab(icon: Icon(Icons.fastfood), text: 'Snacks'),
              Tab(icon: Icon(Icons.badge), text: 'Staff'),
              Tab(icon: Icon(Icons.person), text: 'Socios'),
            ],
          ),
        ),
      ),
    );
  }
}