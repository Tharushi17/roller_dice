import 'package:flutter/material.dart';
import 'package:roller_dice_2/roller_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        )
      ),
    
    child: const Center(child: RollerDice()),
    );
  }
}