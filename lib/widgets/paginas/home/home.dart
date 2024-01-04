import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/paginas/home/pantalla_contador.dart';
import 'package:proyecto01/widgets/paginas/home/pantalla_inicio.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PantallaInicio(),
            PantallaContador(),
          ],
        ),
      ),
    );
  }
}
