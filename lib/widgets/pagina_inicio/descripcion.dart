import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // definimos el ancho del contenedor
      width: 500,
      child: Column(
        // alinemos el texto
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'APRENDE A CREAR WEBS CON FLUTTER',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
