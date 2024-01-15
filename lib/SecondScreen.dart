import 'package:flutter/material.dart';
import 'package:flutterasynbatch3/functions.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textEditingControllerZahl1 = TextEditingController();

  TextEditingController textEditingControllerZahl2 = TextEditingController();

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SecondScreen")),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingControllerZahl1,
              ),
              SizedBox(height: 10,),
              TextField(
                controller: textEditingControllerZahl2,
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()async{
                double zahl1 = double.parse(textEditingControllerZahl1.text);
                double zahl2 = double.parse(textEditingControllerZahl2.text);
                
                result = await berechneSumme(zahl1, zahl2);

                setState(() {
                  
                });
                
              }, child: Text("Summe berechnen")),
              SizedBox(height: 10,),
              Text(result.toString()),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("pop Seite")),
            ],
          )
        ),
      );
  }
}