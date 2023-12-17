import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/boton.dart';
import 'package:proyecto01/widgets/descripcion.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Descripcion(),
        SizedBox(),
        Boton(),
      ],
    );
  }
}
