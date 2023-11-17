import 'package:flutter/material.dart';
import 'package:roller_dice_2/gradient_container.dart';

class RollerDiceApp extends StatelessWidget {
  const RollerDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Roller Dice'),
        ),

      body: const GradientContainer(
        colors:[
          Color.fromARGB(255, 213, 235, 158),
          Color.fromARGB(255, 50, 70, 1)
        ]
      ),
      )
    );
  }
}