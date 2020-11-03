import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedindex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: this.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                this.selectedindex = index;
              });
            },  
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 29.0,
                ),
                child: Text(
                  this.categories[index],
                  style: TextStyle(
                    fontSize: 24.0,
                    color: index == this.selectedindex
                        ? Colors.white
                        : Colors.white70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                )),
          );
        },
      ),
    );
  }
}
