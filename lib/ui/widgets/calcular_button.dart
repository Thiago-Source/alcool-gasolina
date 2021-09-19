import 'package:flutter/material.dart';

class CalcularButtonWidget extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool busy;
  final bool invert;

  const CalcularButtonWidget(
      {Key? key,
      required this.label,
      required this.onPressed,
      required this.busy,
      required this.invert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: invert ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                label,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: 'Big Shoulders Display',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
