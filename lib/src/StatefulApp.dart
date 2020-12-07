import 'package:flutter/material.dart';
import 'package:flutter_app_1/src/widget/ImageList.dart';
import 'package:http/http.dart' show get;
import 'models/ImageModel.dart';
import 'dart:convert';

//show get tells dart to import only get function total list of functions in http.dart
class ImageApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<ImageApp> {
  int counter = 1;

  List<ImageModel> images = [];

  void fetchImage() async {
    counter += 1;
    var response = await get('http://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: ImageList(images),
      appBar: AppBar(title: Text('My Title')),
      floatingActionButton: FloatingActionButton(
        // onPressed: (){
        //
        //  setState(() {
        //    counter += 1;
        //  });
        // }
        onPressed: fetchImage,
        child: Icon(Icons.add),
        //Adding text with + icon
      ),
    ));
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
}
