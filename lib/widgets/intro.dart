import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/boton.dart';
import 'package:proyecto01/widgets/descripcion.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 190,
        // creamos una fila en la que tenemos la descripcion y el boton
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Descripcion(),
            SizedBox(),
            Boton(),
          ],
        ),
      ),
    );
  }
}
