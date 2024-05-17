// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/login.dart';
import 'package:provider/provider.dart';
import 'package:namer_app/mainpage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key );

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
          ),
          home: LoginPage(),
    );
  }
}