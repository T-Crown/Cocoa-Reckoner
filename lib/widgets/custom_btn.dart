import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget{
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustomButtons({super.key, required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
backgroundColor: color,
padding: EdgeInsets.symmetric(
  horizontal: 24, vertical: 12
),
textStyle: TextStyle(fontSize: 16)
      ),
      onPressed: onPressed, child: Text(text));
  }
}