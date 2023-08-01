import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? icon;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CustomTextField({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFF407BE2), // Replace with your desired color
              width: 1.0,
            ),
          ),
        ),
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText,
      ),
    );
  }
}
