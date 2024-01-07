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
      child:
          //----------------------en el caso que la pantalla sea mayor a 900 px
          screenWidth > 900
              ? const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(),
                    SizedBox(),
                    Menu(),
                  ],
                )
              :
              //-----------------------------------en caso que sea menor de 900
              const FittedBox(
                  //-----------lo convertiremos en una columna para poner el logo
                  //por encima
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
