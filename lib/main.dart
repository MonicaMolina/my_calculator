import 'package:flutter/material.dart';
import './widgets/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget {
  const MyCalculatorApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('987'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: 'AC'),
                  CalculatorButton(text: 'C'),
                  CalculatorButton(text: '<'),
                  CalculatorButton(text: '/'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '9'),
                  CalculatorButton(text: '8'),
                  CalculatorButton(text: '7'),
                  CalculatorButton(text: 'X'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '6'),
                  CalculatorButton(text: '5'),
                  CalculatorButton(text: '4'),
                  CalculatorButton(text: '+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '3'),
                  CalculatorButton(text: '2'),
                  CalculatorButton(text: '1'),
                  CalculatorButton(text: '-'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '+/-'),
                  CalculatorButton(text: '0'),
                  CalculatorButton(text: '00'),
                  CalculatorButton(text: '='),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
