import 'package:first_project/widgets/custom_btn.dart';
import 'package:first_project/widgets/input_table.dart';
import 'package:first_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class CWTScreen extends StatelessWidget {
  const CWTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CWT") ,
        ),
        body: SingleChildScrollView(
          child: Padding(
            
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
                      "CBS"
                    ],
                
                  ),
                 const SizedBox(
                        height: 20,
                      ),
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Tonnes Price"),
                      const SizedBox(
                        height: 8,
                      ),
                
                      TextFieldInput(
                        labelText: '',
                        color: const Color.fromRGBO(236, 228, 228, 0.259),
                      ),
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
                      const Text("Result"),
                
                      TextFieldInput(
                        labelText: '',
                        color: const Color.fromRGBO(57, 32, 32, 0.259),
                      ),
                
                    ],
                  )
              ],
            ),
          ),
        )
      ),
    );
  }
}