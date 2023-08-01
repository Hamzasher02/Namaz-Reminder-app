// import 'package:flutter/material.dart';

// class Custompasswordfield extends StatelessWidget {
//   final String labelText;
//   final String hintText;
//   final TextEditingController controller;
//   final ValueChanged<String>? onChanged;
//   final TextInputType keyboardType;
//   final bool obscureText;

//   const Custompasswordfield({
//     Key? key,
//     required this.labelText,
//     this.hintText = '',
//     required this.controller,
//     this.onChanged,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: labelText,
//         hintText: hintText,
//         suffixIcon: const Icon(
//           Icons.person_3_outlined,
//           color: Colors.blueAccent,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: const BorderSide(
//             color: Color(0xFF407BE2), // Replace with your desired color
//             width: 1.0,
//           ),
//         ),
//       ),
//       controller: controller,
//       onChanged: onChanged,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//     );
//   }
// }
