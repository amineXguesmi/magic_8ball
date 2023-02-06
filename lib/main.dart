import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text("ASK ME ANYTHING"),
        ),
      ),
      body: Myapp(),
      backgroundColor: Colors.blue[300],
    ),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int num = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            child: Expanded(child: Image.asset("images/ball$num.png")),
            onPressed: () {
              setState(() {
                num = Random().nextInt(5) + 1;
              });
            },
            style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
          ),
        )
      ],
    );
  }
}
