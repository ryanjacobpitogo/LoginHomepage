import 'package:flutter/material.dart';
const double defPadding = 20.0;

class InputField extends StatelessWidget {
  const InputField({
    Key? key, required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(36),
    ),
      child: TextField(
        obscureText: label == "Password",
        decoration: InputDecoration(  
          border: InputBorder.none,
          hintText: label,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black
          ),
          prefixIcon: Icon(
              (){
                if(label == "Username") {
                  return Icons.account_circle;
                } else if (label == "Password") {
                  return Icons.key;
                } else {
                  return Icons.search;
                }
              }()
            ),
        ),
      ),
    );
  }
}