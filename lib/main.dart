// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:math';
import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Background color

class _HomePageState extends State<HomePage> {
  Color pageColor = Color.fromARGB(255, 255, 255, 255);

  void changeColor() {
    final a = 255;
    final r = Random().nextInt(255);
    final g = Random().nextInt(255);
    final b = Random().nextInt(255);
    setState(() {
      pageColor = Color.fromARGB(a, r, g, b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      color: this.pageColor,
      child: Center(
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 53, 53, 53))),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Click to change color",
              style: TextStyle(
                  fontFamily: "Inter", fontSize: 24, color: pageColor),
            ),
          ),
          onPressed: changeColor,
        ),
      ),
    ));
  }
}
