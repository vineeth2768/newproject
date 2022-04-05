import 'package:flutter/material.dart';

class RaffleDetails extends StatelessWidget {
  const RaffleDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const 
        Color(0xff124076),
        title: const Text("Prize Details"),),
    );
  }
}