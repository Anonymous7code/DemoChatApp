import 'package:flutter/material.dart';
import 'package:Chats/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        visualDensity:VisualDensity.adaptivePlatformDensity,
        accentColor: Color(0xFFFEF9EB), 
      ),
      home: Homescreen(),
    );
  }
}
