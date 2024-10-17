import 'dart:math';

import 'package:dice_app_provider/view/dice_image.dart';
import 'package:flutter/material.dart';

class DiceAppController with ChangeNotifier {
  // index of dice
  int diceIndex = 0;
  int finalDiceIndex = DiceImage.imageNmae.length - 1;
  final Random random = Random(); // for random generating index

  rollDice() {
    if (diceIndex < finalDiceIndex) {
      diceIndex++;
    } else if (diceIndex == finalDiceIndex) {
      diceIndex = 0;
    }

    notifyListeners();
  }

  // random logic to generate random numbers
  randomRollDice() {
    diceIndex = random.nextInt(6);
    notifyListeners(); 
  }
}
