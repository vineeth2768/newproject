import 'package:flutter/material.dart';
import 'package:newproject/const/const_height.dart';
import 'package:newproject/gen_textfield/textfield_gen.dart';
import 'package:newproject/screens/screen_loginpage.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confPassword = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(199, 21, 35, 48),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

                height: 150,
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
                ),
                ),
            height100,
            const Text(
              "Register your account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            height40,
            GetTextFormField(
                controller: _userNameController,
                hintText: "Enter your Username",
                icon: Icons.person,
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter your Username";
                  }else{
                    return null;
                  }
                },
                ),
            height10,
            GetTextFormField(
                controller: _emailController,
                hintText: "Enter your email Adderss",
                icon: Icons.email,
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter your email";
                  }else{
                    return null;
                  }
                },
                ),
            height10,
            GetTextFormField(
                controller: _passwordController,
                hintText: "Enter your password",
                icon: Icons.lock,
                validator: (value){
                  if(value!.isEmpty){
                    return "enter password";
                  }else{
                    return null;
                  }
                },
                ),
            height10,
            GetTextFormField(
                controller: _confPassword,
                hintText: "Conform your pasword",
                icon: Icons.lock_clock_rounded,
                validator: (value){
                  if(value!.isEmpty){
                    return "enter password";
                  }else{
                    return null;
                  }
                },
                ),
            height40,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(200, 40),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const ScreenLogin())));
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
