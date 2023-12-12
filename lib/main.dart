import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/intro.dart';
import 'package:proyecto01/widgets/nav_superior.dart';

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
              // creamos un widget para la barra superior
              NavSuperior(),
              // como el gidget Intro() tiene un double.infinite hay que delimitar el tamaño en su padre por eso
              // usamos expanded
              Intro(),
            ],
          ),
        ),
      ),
    );
  }
}
