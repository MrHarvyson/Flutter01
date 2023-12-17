import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto01/widgets/pagina_contador/pantalla_contador.dart';
import 'package:proyecto01/widgets/pagina_inicio/pantalla_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.poppins(textStyle: textTheme.bodyMedium),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ejercicio 01',
      home: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              PantallaInicio(),
              PantallaContador(),
            ],
          ),
        ),
      ),
    );
  }
}
