// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GetTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  IconData icon;
  bool isObscureText;
  TextInputType? inputType;
  final String? Function(String?)? validator;
  

  GetTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.validator,
    required this.icon,
    this.isObscureText = false,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        validator: validator,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
