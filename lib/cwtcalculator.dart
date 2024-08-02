import 'package:first_project/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CWTCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CWT Calculator'),
      ),
      body: Center(
        child: CustomTextfield()
      ),
    );
  }
}
