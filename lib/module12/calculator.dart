import 'package:flutter/material.dart';
import 'package:flutter_application_1/module12/widjet/build_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String _output ='0';
  String _input ='0';
  String _ope ='';
  double num1=0;
  double num2=0;


void buttonPress(String value) {
  print('Button Press $value');

  setState(() {
    if (value == 'c' || value == 'C') {
      _output = '0';
      _input = '0';
      _ope = '';
      num1 = 0;
      num2 = 0;
      return;
    } else if (value == '=') {
      if (_ope.isNotEmpty && _input.isNotEmpty) {
        num2 = double.tryParse(_input) ?? 0;

        if (_ope == '+') {
          _output = (num1 + num2).toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
        } else if (_ope == '/') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Math Error';
        }

        _input = _output;
        _ope = '';
      }
      return;
    } else if (['+', '-', '*', '/'].contains(value)) {
      num1 = double.tryParse(_input) ?? 0;
      _ope = value;
      _input = '';
      return;
    } else {
      if (_input == '0') {
        _input = value;
      } else {
        _input += value;
      }
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
           Expanded(
           child: Container(

              alignment: Alignment.bottomRight,
              child: Column(
                children: [
                  Text(
                    '$num1 $_ope $_input',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    _output,
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
           ),

           Row(
              children: [
                BuildButton(onclick:()=>buttonPress('4'), text: '4'),
                BuildButton(onclick: ()=>buttonPress('5'), text: '5'),
                BuildButton(onclick: ()=>buttonPress('6'), text: '6'),
                BuildButton(onclick: ()=>buttonPress('*'), text: '*',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()=>buttonPress('7'), text: '7'),
                BuildButton(onclick: ()=>buttonPress('8'), text: '8'),
                BuildButton(onclick: ()=>buttonPress('9'), text: '9'),
                BuildButton(onclick: ()=>buttonPress('/'), text: '/',color: Colors.orange,),
              ],
            ),
            
            Row(
              children: [
                BuildButton(onclick: ()=>buttonPress('1'), text: '1'),
                BuildButton(onclick: ()=>buttonPress('2'), text: '2'),
                BuildButton(onclick: ()=>buttonPress('3'), text: '3'),
                BuildButton(onclick: ()=>buttonPress('-'), text: '-',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()=>buttonPress('C'), text: 'C'),
                BuildButton(onclick: () =>buttonPress('0'), text: '0'),
                BuildButton(onclick: ()=>buttonPress('='), text: '='),
                BuildButton(onclick: ()=>buttonPress('+'), text: '+',color: Colors.orange,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
