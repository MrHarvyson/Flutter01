import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/pagina_inicio/boton.dart';
import 'package:proyecto01/widgets/pagina_inicio/descripcion.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Descripcion(),
        SizedBox(),
        Boton(),
      ],
    );
  }
}
