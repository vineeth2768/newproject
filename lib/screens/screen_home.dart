import 'package:flutter/material.dart';
import 'package:newproject/pages/coupones.dart';
import 'package:newproject/pages/Account.dart';
import 'package:newproject/pages/homepage.dart';
import 'package:newproject/pages/product.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
   int _currentSelectedIndex = 0;

   final _pages =[
     const Home(),
     const Product(),
     const Coupones(),
     const Account(),
     
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff8acc47),
        selectedItemColor: const Color(0xff124076),
        unselectedItemColor: Colors.white,
        currentIndex: _currentSelectedIndex,

        onTap: (newIndex){
           setState(() {
             _currentSelectedIndex = newIndex;
           });
        },
        items:  const  [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,size: 30,),label: "Product"),
        BottomNavigationBarItem(icon: Icon(Icons.redeem_outlined,size: 30,),label: "Coupens"),
        BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,),label: "Account"), 
      ]),
      body: _pages[_currentSelectedIndex]
    );
  }
}
