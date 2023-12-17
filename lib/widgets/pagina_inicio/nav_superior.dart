import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/pagina_inicio/logo.dart';
import 'package:proyecto01/widgets/pagina_inicio/menu.dart';

class NavSuperior extends StatelessWidget {
  const NavSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Row(
        // alineamos todos los componentes abajo
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(),
          SizedBox(),
          Menu(),
        ],
      ),
    );
  }
}
