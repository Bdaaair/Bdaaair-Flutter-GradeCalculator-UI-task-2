// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade Calculator'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: TextField(keyboardType: TextInputType.number)),
            Spacer(),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "type your score",
                prefixIcon: Icon(Icons.percent),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Calculate'),
            ),
            Spacer(),
            Text(
              "A",
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
