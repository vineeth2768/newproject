import 'package:flutter/material.dart';
import 'package:newproject/const/const_height.dart';
import 'package:scratcher/scratcher.dart';

class ScratchPage extends StatelessWidget {
  const ScratchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        height100,
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          height20,
          const Text(
            "You Got A scratch card",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          height20,
          Center(
            child: Scratcher(
              accuracy: ScratchAccuracy.low,
              brushSize: 30,
              threshold: 50,
              onChange: (value) => ("Scratch progress: $value%"),
              onThreshold: () => ("Threshold reached, you won!"),
              image:
                  const Image(image: AssetImage("assets/rewards/scratch.PNG")),
              child: Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/rewards/reward.PNG"),
              ),
            ),
          )
        ]),
      ],
    ));
  }
}
