import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  //-------------------------creamos variables que pasaremos por el constructor
  final VoidCallback onPressed;
  final String texto;
  const Boton({super.key, required this.onPressed, required this.texto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromARGB(52, 255, 255, 255),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Center(
          child:
              //----------------si se pasa texto tendra el boton el texto pasado
              texto.isNotEmpty
                  ? Text(
                      texto,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    )
                  :
                  //--------------en caso contrario se pondrá el icono de reset
                  const Center(
                      child: Icon(
                        Icons.restart_alt_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
        ),
      ),
    );
  }
}
