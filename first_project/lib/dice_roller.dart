import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 150),
        const SizedBox(height: 25),
        FilledButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 24),
            side: const BorderSide(color: Colors.white, width: 1),
            padding:
                const EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
          ),
          child: const Text("🎲 Let's roll! 🎲"),
        )
      ],
    );
  }
}
