import 'package:flutter/material.dart';
import 'package:newsfinall/provider/newsprovider.dart';
import 'package:newsfinall/screens/screensnews.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => providnews(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: newscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
