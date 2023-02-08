import 'package:flutter/material.dart';

import 'components/text_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double? firstNumber;
  double? secondNumber;
  String textToDisplay = "0";
  String? res;
  String? operatorToPerform;
  
  
  btnclicked(btnvalue){
    if(btnvalue == "C"){
      textToDisplay = "0";
      firstNumber = 0;
      secondNumber = 0;
      res = "0";
    }

    else if(btnvalue =="+" || btnvalue =="-" || btnvalue =="*" || btnvalue =="/" ){
      firstNumber = double .parse(textToDisplay);
      res = "";
      operatorToPerform = btnvalue;
    }
    else if(btnvalue == "="){
      secondNumber = double.parse(textToDisplay);
      if(operatorToPerform == "+"){
        res = (firstNumber! + secondNumber!).toString();
      }
      if(operatorToPerform == "-"){
        res = (firstNumber! - secondNumber!).toString();
      }
      if(operatorToPerform == "*"){
        res = (firstNumber! * secondNumber!).toString();
      }
      if(operatorToPerform == "/"){
        res = (firstNumber! / secondNumber!).toString();
      }
    }else{
      res = int.parse(textToDisplay + btnvalue).toString();
    }
    setState(() {
      textToDisplay = res!;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Container(
        color: const Color.fromARGB(255, 240, 235, 235),
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(8.0),
                child: Text(textToDisplay, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                
              )
            ),
            Row(
              children: [
                textbutton("7",onPressed: btnclicked),
                textbutton("8",onPressed: btnclicked),
                textbutton("9",onPressed: btnclicked),
                textbutton("+",onPressed: btnclicked),
              ],
            ),
            Row(
              children: [
                textbutton("4",onPressed: btnclicked),
                textbutton("5",onPressed: btnclicked),
                textbutton("6",onPressed: btnclicked),
                textbutton("-",onPressed: btnclicked),
              ],
            ),
            Row(
              children: [
                textbutton("1",onPressed: btnclicked),
                textbutton("2",onPressed: btnclicked),
                textbutton("3",onPressed: btnclicked),
                textbutton("*",onPressed: btnclicked),
              ],
            ),
            Row(
              children: [
                textbutton("C",onPressed: btnclicked),
                textbutton("0",onPressed: btnclicked),
                textbutton("=",onPressed: btnclicked),
                textbutton("/",onPressed: btnclicked),
              ],
            ),
          ],
        ),
      ),
    );
  }
}