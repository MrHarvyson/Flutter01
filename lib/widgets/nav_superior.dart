import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/logo.dart';
import 'package:proyecto01/widgets/menu.dart';

class NavSuperior extends StatelessWidget {
  const NavSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 45),
      // creamos una fila que estara formada por un logo y el menu
      child: Row(
        // alineamos todos los componentes abajo
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logo(),
          SizedBox(),
          Menu(),
        ],
      ),
    );
  }
}
