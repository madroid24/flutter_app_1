import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/ImageModel.dart';

 // Image List class is not responsible for rendering UI, its parent class (App) class widget, hence it can be declared stateless
 class ImageList extends StatelessWidget{
   final List<ImageModel> images;

   ImageList(this.images);

   //Build method here is going to look after each image from list of image and show image widget for it on screen
  @override
  Widget build(BuildContext context) {
      return ListView.builder(
          itemCount: images.length,
          // Item builder is widget created each item we scroll screen, its list item widget
          itemBuilder:(context,int index){
            //Return an image here
            //constructor to show Image from url is Image.network
            //return Image.network(images[index].url);
            return buildImage(images[index]);
          } ,
      );
  }

  Widget buildImage(ImageModel image){
    return Container(
      //To apply border to image we use decoation class and that too box-decoration
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
      margin: EdgeInsets.all(20.0),
      //Flutter expects 1 single widget against child
      // child: Image.network(image.url),
      //returning kind of Linear layout with vetical oreintation
      child: Column(
        children: <Widget>[
          // Image.network(image.url),
          //You can use Padding widget where you can mention child widget with padding applied to it
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }



 }

