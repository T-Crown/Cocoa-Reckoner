import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  TextFieldInput({super.key, required this.labelText, required this.color});

final String labelText;
final Color color;
TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: color),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),


        ),
        
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
      
    );
  }
}