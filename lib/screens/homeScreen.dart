import 'package:Chats/models/messageModels.dart';
import 'package:Chats/widget/categorySelectors.dart';
import 'package:Chats/widget/favouritecontact.dart';
import 'package:Chats/widget/recentchats.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
          iconSize: 30.0,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          RecentChats(),
        ],
      ),
    );
  }
}
