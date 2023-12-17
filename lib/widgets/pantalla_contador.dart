import 'package:flutter/material.dart';

class PantallaContador extends StatelessWidget {
  const PantallaContador({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}
