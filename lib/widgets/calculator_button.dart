import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final Function callback;

  // ignore: use_key_in_widget_constructors
  const CalculatorButton(
      {required this.text, required this.fillColor, required this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          onPressed: () => callback(text),
          child: Text(text),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25)),
            backgroundColor: MaterialStateProperty.all(Color(fillColor)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
