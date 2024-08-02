import 'package:flutter/material.dart';

class InputTable extends StatelessWidget {


  final int rows;
  final int columns;
final List<String> columnHeaders;
  
   

  const InputTable({super.key, required this.rows, required this.columns, required this.columnHeaders});
  @override
  Widget build(BuildContext context) {
    
    return Padding(
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
    );
  }
}

  