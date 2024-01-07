import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // alineamos todo el contendio abajo
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'Inicio',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        const Text(
          'Widgets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/about'),
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        const Icon(
          Icons.search,
          color: Colors.grey,
          size: 35,
        ),
      ],
    );
  }
}
