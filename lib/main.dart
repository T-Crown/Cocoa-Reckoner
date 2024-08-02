import 'package:first_project/cwt_kg.dart';
import 'package:first_project/kg_cwt.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'kg_screen.dart';
import 'cwtcalculator.dart';
import 'pricecalculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cocoa Reckoner',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ButtonListScreen(),
    );
  }
}

class ButtonListScreen extends StatelessWidget {
  final List<String> buttonLabels = [
    'CWT Calculator',
    'Price Calculator',
    'CWT - KG',
    'KG - CWT',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cocoa Reckoner'),
      ),
      body: ListView.builder(
        itemCount: buttonLabels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _navigateToPage(context, index);
              },
              child: Text(buttonLabels[index]),
            ),
          );
        },
      ),
    );
  }

  void _navigateToPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = CWTCalculator();
        break;
      case 1:
        page = PriceCalculator();
        break;
      case 2:
        page = CWTKGScreen();
        break;
      case 3:
        page = KGCWTSCREEN();
        break;
      case 4:
        page = AboutPage();
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
