import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'calcular_button.dart';
import 'text_input.dart';

class FormularioWidget extends StatelessWidget {
  final MoneyMaskedTextController gasController;
  final MoneyMaskedTextController alcoolController;
  final bool busy;
  final void Function() onPressed;

  const FormularioWidget(
      {Key? key,
      required this.gasController,
      required this.alcoolController,
      required this.busy,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: TextInputWidget(controller: gasController, label: 'Gasolina'),
        ),
        const SizedBox(height: 32.0),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: TextInputWidget(controller: alcoolController, label: 'Álcool'),
        ),
        const SizedBox(height: 64),
        CalcularButtonWidget(
          busy: busy,
          invert: false,
          label: 'Calcular',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
