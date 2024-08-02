import 'package:first_project/widgets/custom_btn.dart';
import 'package:first_project/widgets/input_table.dart';
import 'package:first_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class KGTScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KG"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Column(
                
              children: [
               const SizedBox(
                  height: 50,
                ),
               
                
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Weigh/KG"),
                      const SizedBox(
                        height: 8,
                      ),
                
                      TextFieldInput(
                        labelText: '',
                        color: const Color.fromRGBO(236, 228, 228, 0.259),
                      ),
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

class CWTToKG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CWT to KG'),
      ),
      body: Center(
        child: Text(
          'CWT to KG Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
