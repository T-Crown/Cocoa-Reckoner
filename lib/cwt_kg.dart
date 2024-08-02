import 'package:first_project/widgets/custom_btn.dart';
import 'package:first_project/widgets/input_table.dart';
import 'package:first_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class CWTKGScreen extends StatelessWidget {
  const CWTKGScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CWT TO KG") ,
        ),
        body: Padding(
          
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
          child: Column(
      
            children: [
             const SizedBox(
                height: 50,
              ),
              const InputTable(
                  rows: 1,
                  columns: 3,
                  columnHeaders: [
                    "CWTS",
                    "QRTS",
                    "LBS"
                  ],
      
                ),
               const SizedBox(
                      height: 20,
                    ),
      
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                     const SizedBox(
                      height: 30,
                     ),
                    CustomButtons(
                      text: "Calculate",
                      color: Colors.green,
                      onPressed: (){
      
                      },
                    ),
      const SizedBox(
        height: 80,
      ),
                    const Text("Weight in KG"),
      
                    TextFieldInput(
                      labelText: '',
                      color: const Color.fromRGBO(57, 32, 32, 0.259),
                    ),
      
                  ],
                )
            ],
          ),
        )
      ),
    );
  
  }
}