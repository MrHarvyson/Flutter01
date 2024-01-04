import 'package:flutter/material.dart';
import 'package:proyecto01/paginas/home/descripcion.dart';
import 'package:proyecto01/paginas/home/nav_superior.dart';
import 'package:proyecto01/paginas/home/pantalla_contador.dart';
import 'package:proyecto01/widgets/boton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    // creamos un widget para la barra superior
                    const NavSuperior(),
                    // como el gidget Intro() tiene un double.infinite hay que delimitar el tamaño en su padre por eso
                    // usamos expanded
                    Expanded(
                        child: SizedBox(
                      height: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Descripcion(),
                          SizedBox(
                            width: 300,
                            height: 50,
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
                        ],
                      ),
                    )),
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
