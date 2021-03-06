import 'package:Chats/models/messageModels.dart';
import 'package:Chats/screens/chats.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favourite Contacts',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.blueGrey,
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: favourite.length,
            itemBuilder: (BuildContext context, int index) {
              
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => ChatScreen(user: favourite[index],),
                              )),
                              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(favourite[index].imageUrl),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      favourite[index].name,
                      style: TextStyle(
                          letterSpacing: 1.1,
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
