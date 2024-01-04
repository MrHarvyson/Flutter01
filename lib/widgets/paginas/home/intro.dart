import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/paginas/home/descripcion.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Descripcion(),
        //const SizedBox(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/about'),
          child: Container(
            width: 300,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
