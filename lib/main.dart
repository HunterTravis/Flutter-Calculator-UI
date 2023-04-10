import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(text: 'C', backgroundColor: Colors.grey),
                CalculatorButton(text: '+/-', backgroundColor: Colors.grey),
                CalculatorButton(text: '%', backgroundColor: Colors.grey),
                CalculatorButton(text: '/', backgroundColor: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '*', backgroundColor: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: '-', backgroundColor: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '+', backgroundColor: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(text: '0'),
                CalculatorButton(text: '.'),
                CalculatorButton(text: '=', backgroundColor: Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const CalculatorButton(
      {super.key, required this.text, this.backgroundColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
