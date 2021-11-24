import 'package:flutter/material.dart';
import './widgets/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyCalculatorApp());
}

class MyCalculatorApp extends StatefulWidget {
  const MyCalculatorApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<MyCalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Color(0x99aa9aadd),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 28, color: Color(0xFFFFFFFF))),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 45, color: Color(0xFFFFFFFF))),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    fillColor: 0xFFf4d160,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    fillColor: 0xFFc879FF,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
