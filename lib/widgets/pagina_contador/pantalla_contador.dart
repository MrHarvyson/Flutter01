import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/pagina_contador/boton.dart';
import 'package:proyecto01/widgets/pagina_contador/reset.dart';

class PantallaContador extends StatefulWidget {
  const PantallaContador({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  int numero = 0;

  // para sumar
  void _incrementar() {
    setState(() {
      numero++;
    });
  }

  // para restar
  void _restar() {
    setState(() {
      if (numero > 0) {
        numero--;
      }
    });
  }

  // reset
  void _reset() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numero.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 300,
              fontWeight: FontWeight.w100,
              height: 23.0 / 15.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boton(onPressed: _restar, texto: '-1'),
              SizedBox(
                width: 50,
              ),
              Reset(onPressed: _reset),
              SizedBox(
                width: 50,
              ),
              Boton(onPressed: _incrementar, texto: '+1'),
            ],
          ),
        ],
      ),
    );
  }
}
