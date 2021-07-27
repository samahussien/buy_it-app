import 'package:flutter/material.dart';


import 'modules/home/logintask.dart';
import 'modules/home/discover.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buy it',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor:Colors.orange,
      ),
      home: LoginTask(),
    );
  }
}
