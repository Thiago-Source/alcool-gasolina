import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class TextInputWidget extends StatelessWidget {
  final String label;
  final MoneyMaskedTextController controller;

  const TextInputWidget(
      {Key? key, required this.controller, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        width: 100,
        alignment: Alignment.centerRight,
        child: Text(label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display',
            )),
      ),
      Expanded(
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Big Shoulders Display',
          ),
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: .5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: .5),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: .5),
            ),
          ),
        ),
      ),
    ]);
  }
}
