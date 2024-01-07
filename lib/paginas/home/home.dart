import 'package:flutter/material.dart';
import 'package:proyecto01/paginas/home/descripcion.dart';
import 'package:proyecto01/paginas/home/nav_superior.dart';
import 'package:proyecto01/paginas/home/pantalla_contador.dart';
import 'package:proyecto01/widgets/boton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    const NavSuperior(),
                    Expanded(
                      child:
                          //-----------en el caso de ser la pantalla mayor a 900 px
                          screenWidth > 900
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Flexible(
                                      flex: 3,
                                      child: FittedBox(
                                        child: Descripcion(),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: FittedBox(
                                        child: SizedBox(
                                          width: 250,
                                          height: 75,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                            ),
                                            child: const Text(
                                              'Iniciar Curso',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              :
                              //----------en caso contrario pondremos el boton abajo
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Flexible(
                                      flex: 3,
                                      child: FittedBox(
                                        // FittedBox cambia tamaño letra
                                        child: Descripcion(),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: FittedBox(
                                        child: SizedBox(
                                          width: 250,
                                          height: 75,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                            ),
                                            child: const Text(
                                              'Iniciar Curso',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                    ),
                  ],
                ),
              ),
            ),
            const PantallaContador(),
          ],
        ),
      ),
    );
  }
}
