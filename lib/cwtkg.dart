import 'package:flutter/material.dart';

class CWTCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CWT Calculator'),
      ),
      body: Center(
        child: Text(
          'CWT Calculator Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
