import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/newsprovider.dart';
import '../widgets/widgets.dart';


class newscreen extends StatelessWidget {
  const newscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("news"),
      ),
      body: Center(
        child: Consumer<providnews>(
    builder:(context,value,child){
          var mood=value.newsssmodd;
          if(mood==null){
            value.GetData();
            return Center(
            child: CircularProgressIndicator(),
            );
    }
          else{
            return ListView.builder(itemBuilder: (BuildContext context, int index)
    {
      return custom(urlImage: mood.articels[index]['urlToImage']??"No Image",title: mood.articels[index]['title']??"No Title",descreption: mood.articels[index]['description']??"No Descreption");
    },
    );
    }
    },
    ),
    ),
    );
  }
}
