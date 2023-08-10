import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/constants/colors.dart';
import 'package:food/models/restaurant.dart';

class FoodList extends StatelessWidget {

  final int selected;
  final Function callback;
  final Restaurant restaurant;
  const FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? primaryColor : Colors.white
            ),
            child: Text(category[index], style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ) , 
      separatorBuilder: (_, index) => SizedBox(width: 10,), 
      itemCount: category.length),
    );
  }
}