import 'package:first_project/widgets/custom_btn.dart';

import 'package:first_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class KGCWTSCREEN extends StatelessWidget {
  const KGCWTSCREEN({super.key});

  @override
  Widget build(BuildContext context) {
    const int rows = 1;
    const int columns = 4;
    final List<String> columnHeaders = ["Tonnes","Cwts", "Qrts", "Lbs"];
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KG TO CWT") ,
        ),
        body: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Column(
                
              children: [
              
                 const SizedBox(
                        height: 20,
                      ),
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        const Text("Weight in KG"),
                
                      TextFieldInput(
                        labelText: '',
                        color: const Color.fromRGBO(57, 32, 32, 0.259),
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
                 const SizedBox(
                  height: 50,
                ),
                
                   Padding(
                padding: const EdgeInsets.all(16.0),
                child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: columnHeaders.map((header){
                return TableCell(child: Padding(padding: const EdgeInsets.all(8.0), 
                child: Text(header,
                textAlign: TextAlign.center,
                style: TextStyle(
          
          fontWeight: FontWeight.bold,
          
                ),
                ),
                
                ));
              }).toList()
            ),
          
          ...List.generate(rows, (rowIndex){
           return TableRow(
          
            children:  List.generate(columns, (colIndex) {
                return TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '0',
                      ),
                    ),
                  ),
                );
              }),
           );
          }) 
            
          ],
          ),
              ),
            
                    
                
                    ],
                  )
              ],
            ),
          ),
        )
      ),
    );
  ;
  }
}