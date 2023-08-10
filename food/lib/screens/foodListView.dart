import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/screens/detailPage.dart';
import 'package:food/screens/foodItem.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  const FoodListView(this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),

        children: category.map((e) => 
        ListView.separated(
          padding: EdgeInsets.zero,
            itemBuilder: (context, index) => 
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailPage(restaurant.menu[category[selected]]![index])));
              },
              child: FootItem(
                restaurant.menu[category[selected]]![index]
              ),
            ), 
            separatorBuilder: (_, index) => SizedBox(height: 10,), 
            itemCount: restaurant.menu[category[selected]]!.length)).toList()
      ),
    );
  }
}