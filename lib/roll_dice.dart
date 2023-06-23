import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});



  @override
  State<RollDice> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {
  var curentNum=1;

  void roll() {

    setState(() {
      curentNum=randomizer.nextInt(6)+1;

    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/images/dice-$curentNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: roll,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            'roll dice',
          ),
        ),
      ],
    );
  }
}