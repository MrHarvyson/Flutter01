import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      // alinemos el texto a la izquierda
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 500,
          child: Text(
            'APRENDE A CREAR WEBS CON FLUTTER',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 500,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
