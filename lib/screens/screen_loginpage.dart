import 'package:flutter/material.dart';
import 'package:newproject/const/const_height.dart';
import 'package:newproject/gen_textfield/textfield_gen.dart';
import 'package:newproject/screens/screen_home.dart';
import 'package:newproject/screens/screen_signup.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(199, 21, 35, 48),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 350,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "𝙊𝙁𝙁𝙀𝙍'𝙎",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("The payment app")
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50)),
                )),
            height40,
            kheight,
            GetTextFormField(
                controller: _userNameController,
                hintText: "Enter User name",
                icon: Icons.person),
            height10,
            GetTextFormField(
                controller: _passwordController,
                hintText: "Enter password",
                icon: Icons.lock),
            height10,
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot your password ?",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(150, 40),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const ScreenHome())));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Does not have an Account ?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const ScreenSignUp())));
                    },
                    child: const Text(
                      "Sign Up Here!",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
