import 'package:flutter/material.dart';

import 'calcular_button.dart';

class SucessoWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const SucessoWidget({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          CalcularButtonWidget(
            invert: true,
            busy: false,
            label: 'Calcular novamente',
            onPressed: onPressed,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
