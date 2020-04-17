import 'dart:math';

import 'package:flutter/material.dart';
import 'package:konveksi_uang/infoKurs.dart';
import 'package:konveksi_uang/About.dart';

void main(){
  runApp(MaterialApp( title: 'Alikasi Konversi Uang', home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController convert = TextEditingController();
  int input, hasil = 0, kurs = 15000;

  int _convertUang(){
    this.input = int.parse(convert.text);
    this.hasil = input * kurs;
    setState(()=>this.hasil);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( centerTitle: true, title: Text("Aplikasi Conversi Uang", style: TextStyle(fontSize: 30)),leading: GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
        }, child: Icon(Icons.info),),),
        body: Center(
          child: Column(
            children: <Widget>[

              Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.blue,
                  padding: EdgeInsets.all(10.0),
                  width: 400,
                  height: 50,
                  //textfiled
                  child: TextField(
                    controller: convert,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'masukan nominal uang dollar'
                    ),
                  ),
                ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                width: 400,
                height: 50,
                //settext
                child: Text(hasil.toString())
              ),

              SizedBox(
                width: 380,
                child: new  RaisedButton(
                  onPressed: _convertUang,
                  child: Text(
                      'konveksi',
                      style: TextStyle(fontSize: 20)
                  ),
                )
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InfoKurs()));
                },
                child: Text('second page'),
              )
            ],
          ),
        )                                            ,
      ),
    );
  }
}

