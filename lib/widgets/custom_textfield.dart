import 'package:first_project/widgets/custom_btn.dart';
import 'package:first_project/widgets/input_table.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int rows = 1;
    const int columns = 4;
    final List<String> columnHeaders = ["Tonnes","Cwts", "Qrts", "Lbs"];
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              InputTable(
                rows: 5,
                columns: 3,
                columnHeaders: [
                  "CWTS",
                  "QRTS",
                  "CBS"
                ],
              ),
              CustomButtons(
                text: "CALCULATE",
                color: Colors.green,
                onPressed: (){
                  
                },
              ),
            //   Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Table(
            //             border: TableBorder.all(),
            //             children: List.generate(rows, (rowIndex) {
            //               return TableRow(
            //                 children: List.generate(columns, (colIndex) {
            //     return TableCell(
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: TextField(
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //             labelText: 'R${rowIndex + 1} C${colIndex + 1}',
            //           ),
            //         ),
            //       ),
            //     );
            //                 }),
            //               );
            //             }
            //     )
            //     ),
            //   )    
            // 

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
          ),
        ),
      ),
    );
  }
}
      // children: List.generate(rows, (rowIndex) {
        //   return TableRow(
        //     children: List.generate(columns, (colIndex) {
        //       return TableCell(
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: TextField(
        //             decoration: InputDecoration(
        //               border: OutlineInputBorder(),
        //               labelText: 'R${rowIndex + 1} C${colIndex + 1}',
        //             ),
        //           ),
        //         ),
        //       );
        //     }),
        //   );
        // }),
      