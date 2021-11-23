import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;

  // ignore: use_key_in_widget_constructors
  const CalculatorButton({
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.black,
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () => {},
          child: Text(text),
        ),
      ),
    );
  }
}
