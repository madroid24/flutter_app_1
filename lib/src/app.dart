import 'package:flutter/material.dart';

class App extends StatelessWidget{

  @override
  Widget build(context){
      return MaterialApp(
          home : Scaffold(
            appBar: AppBar(
                title: Text('My Title')
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                print('Hi There');
              },
              child: Icon(Icons.add),
              //Adding text with + icon
            ),
          )
      );
  }
}