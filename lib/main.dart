import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 11, 11),
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: const Color.fromARGB(255, 253, 225, 223),
        ),
        body: dicee(),
      ),
    ),
  );
}

class dicee extends StatefulWidget {
  const dicee({super.key});

  @override
  State<dicee> createState() => _diceeState();
}

class _diceeState extends State<dicee> {
  int left_dicee = 1;
  int right_dicee = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //FIRST IMAGE
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      left_dicee = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("assets/dicee$left_dicee.png"))),
          // SECOND IMAGE
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      right_dicee = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("assets/dicee$right_dicee.png")))
        ],
      ),
    );
  }
}
