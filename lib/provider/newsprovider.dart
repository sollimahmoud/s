import 'package:flutter/cupertino.dart';
import 'package:newsfinall/Models/modelnews.dart';
import 'package:newsfinall/servises/userservises.dart';

class providnews extends ChangeNotifier{
  newmodel?newsssmodd;
  GetData()async{
    newsssmodd=await NewsServices.getData();
    notifyListeners();
  }
}