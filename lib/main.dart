import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/pagina_contador/pantalla_contador.dart';
import 'package:proyecto01/widgets/pagina_inicio/pantalla_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicio 01',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              PantallaInicio(),
              PantallaContador(),
            ],
          ),
        ),
      ),
    );
  }
}
