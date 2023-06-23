import 'package:flutter/material.dart';
import 'package:rool_dice/roll_dice.dart';



const beginAlin = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secendColor, {super.key});

  final Color firstColor;
  final Color secendColor;



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secendColor,
          ],
          begin: beginAlin,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
