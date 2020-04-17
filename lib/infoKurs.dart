import 'package:flutter/material.dart';
import 'package:konveksi_uang/main.dart';

void main(){
  runApp(MaterialApp(title: 'Info Kurs',home: InfoKurs()));
}

class InfoKurs extends StatefulWidget {
  @override
  _InfoKursState createState() => _InfoKursState();
}


class _InfoKursState extends State<InfoKurs> {

  Widget _btn(){
   return RaisedButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: Text('back'),
    );
  }

  Widget _sogu(String a, String b){
   return SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child: DataTable(
       columns: <DataColumn>[
         DataColumn(label: Text("Bank")),
         DataColumn(label: Text("Kurs Jual")),
         DataColumn(label: Text("Kurs Beli")),

       ],
       rows: <DataRow>[
         DataRow(
           cells: <DataCell>[
             DataCell(Text("BCA")),
             DataCell(Text("15744")),
             DataCell(Text("15656")),

           ],
         ),
         DataRow(
           cells: <DataCell>[
             DataCell(Text("Bank Mandiri")),
             DataCell(Text("15750")),
             DataCell(Text("15853")),

           ],
         ),
         DataRow(
           cells: <DataCell>[
             DataCell(Text("BRI")),
             DataCell(Text("15835")),
             DataCell(Text("15565")),

           ],
         ),
       ],
     ),
   );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Info Curs Uang Dolar", style: TextStyle(fontSize: 30))),
        body: Center(
          child: Column(
            children: <Widget>[
              _sogu('Kurs', '17000'),
              _btn()
            ],
          ),
        ),
      ),
    );
  }
}
