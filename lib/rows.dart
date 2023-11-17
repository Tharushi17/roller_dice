import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}