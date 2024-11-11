import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom extends StatelessWidget {
  final String urlImage;
  final String title;
  final String descreption;

   custom({ required this.urlImage, required this.title, required this.descreption});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network('https://wallpaperaccess.com/full/759396.jpg'),
        Text(title,style: TextStyle(fontWeight:FontWeight.bold, color:Colors.black,fontSize:40 ),),
        SizedBox(height: 20),
        Text("Discription"),
      ],
    );
  }
}
