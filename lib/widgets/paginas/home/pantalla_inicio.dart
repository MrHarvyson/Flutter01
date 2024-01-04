import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/paginas/home/intro.dart';
import 'package:proyecto01/widgets/paginas/home/nav_superior.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            // creamos un widget para la barra superior
            NavSuperior(),
            // como el gidget Intro() tiene un double.infinite hay que delimitar el tamaño en su padre por eso
            // usamos expanded
            Expanded(
                child: SizedBox(
              height: double.infinity,
              child: Intro(),
            )),
          ],
        ),
      ),
    );
  }
}
