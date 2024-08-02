import 'package:first_project/cwt_screen.dart';
import 'package:flutter/material.dart';
import 'kg_screen.dart';

class PriceCalculator extends StatelessWidget {
  final List<String> buttonLabels = [
    'CWT',
    'KG',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Price Calculator'),
      ),
      body: ListView.builder(
        itemCount: buttonLabels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _navigateToConversionPage(context, index);
              },
              child: Text(buttonLabels[index]),
            ),
          );
        },
      ),
    );
  }

  void _navigateToConversionPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = const CWTScreen();
        break;
      case 1:
        page = KGTScreen();
        break;
      default:
        return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
