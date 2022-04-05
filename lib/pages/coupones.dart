import 'package:flutter/material.dart';

class Coupones extends StatelessWidget {
  const Coupones({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff124076),
        title: const Text("My Coupones"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Container(),
        ],
      )
    );
  }
}