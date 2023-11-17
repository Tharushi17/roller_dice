import 'dart:math';

import 'package:flutter/material.dart';

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {
  var diceNumber = 1;

  void roll(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }

  void roll2(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/$diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),

        const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Player One', 
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold 
                    ) ,
                  ),

                  SizedBox(
                    width: 100,
                  ),

                  Text('Player Two', 
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold 
                    ) ,
                  ),
                ],
            )
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: roll,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 67, 7),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 26, fontStyle: FontStyle.normal)
              ),
            
              child: const Text('Roll')
            ),

            const SizedBox(
              width: 100,
            ),
            
            TextButton(onPressed: roll2,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 4, 66, 51),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 26, fontStyle: FontStyle.normal)
              ),
            
              child: const Text('Roll')
            
            ),
          ],
        ),
      ],
    );
  }
}