// import 'package:flutter/material.dart';
// import 'package:newproject/api/local_auth.dart';
// import 'package:newproject/const/const_height.dart';
// import 'package:newproject/screens/screen_home.dart';

// class ScreenAuth extends StatelessWidget {
//   const ScreenAuth({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("assets/shopping.png"),
//           height60,
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.green,
//               onPrimary: Colors.white,
//               shadowColor: Colors.green,
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(32.0)),
//               minimumSize: const Size(200, 80),
//             ),
//             child: const Text(
//               "Start your shop!",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             onPressed: () async {
//               final isAuthenticated = await LocalAuthApi.authenticate();

//               if (isAuthenticated) {
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                     builder: (context) => const ScreenHome()));
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
