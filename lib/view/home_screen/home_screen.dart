import 'package:dice_app_provider/controller/dice_app_controller.dart';
import 'package:dice_app_provider/view/dice_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(DiceImage
                      .imageNmae[context.watch<DiceAppController>().diceIndex]),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // elevation Button

            ElevatedButton(
              onPressed: () {
                context.read<DiceAppController>().randomRollDice();
              },
              child: const Text('Roll the Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
