// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final scoreTextcontroller = TextEditingController();

  String score = "";

  void CalculateScore(BuildContext context) {
    setState(() {
      if (double.parse(scoreTextcontroller.text) >= 90) {
        score = "A";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("A"),
          ),
        );
      } else if (double.parse(scoreTextcontroller.text) >= 80) {
        score = "B";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("B"),
          ),
        );
      } else if (double.parse(scoreTextcontroller.text) >= 70) {
        score = "C";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("C"),
          ),
        );
      } else {
        score = "F";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("F"),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grade Calculator"),
          backgroundColor: Color.fromARGB(255, 13, 66, 145),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: scoreTextcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Type your score",
                      prefixIcon: Icon(Icons.percent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  CalculateScore(context);
                },
                child: Text(
                  "Calculate",
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0)),
              ),
              Spacer(),
              Text(
                score,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 52, 6, 3),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          ),
        ));
  }
}
