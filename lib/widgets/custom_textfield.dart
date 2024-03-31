import 'package:bnews/res/consts/consts.dart';
import 'package:bnews/res/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;
  final bool? isPassword;

  const CustomTextField({
    Key? key,
    required this.hint,
    required this.label,
    this.isPassword,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;

  void toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword == true && !showPassword,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword == true
            ? GestureDetector(
                onTap: toggleShowPassword,
                child: Icon(showPassword ? Icons.lock_open : Icons.lock),
              )
            : null,
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey),
        labelText: widget.label,
        labelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
