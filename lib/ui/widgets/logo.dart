import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/aog-white.png',
          height: 80,
        ),
        const SizedBox(height: 10),
        const Text(
          'Álcool ou Gasolina',
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display'),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
