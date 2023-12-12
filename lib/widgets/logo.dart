import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FlutterLogo(size: double.parse("100")),
        const Text(
          'Flutter',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
