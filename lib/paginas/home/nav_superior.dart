import 'package:flutter/material.dart';
import 'package:proyecto01/paginas/home/logo.dart';
import 'package:proyecto01/paginas/home/menu.dart';

class NavSuperior extends StatelessWidget {
  const NavSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: screenWidth > 900
          ? const Row(
              // alineamos todos los componentes abajo
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(),
                SizedBox(),
                Menu(),
              ],
            )
          : const FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  SizedBox(
                    height: 50,
                  ),
                  Menu(),
                ],
              ),
            ),
    );
  }
}
