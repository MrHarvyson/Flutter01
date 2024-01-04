import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback onPressed;
  Reset({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromARGB(52, 255, 255, 255),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Center(
          child: null,
        ),
      ),
    );
  }
}
