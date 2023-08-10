import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/constants/colors.dart';

import '../models/food.dart';

class FootItem extends StatelessWidget {
  // const FootItem({super.key});
  final Food food;
  FootItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 110,
          height: 110,
          child: Image.asset(food.imageUrl, fit: BoxFit.fitHeight,),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(food.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15,)
                  ],
                ),
                SizedBox(height: 5,),
                Text(food.desc, style: TextStyle(color: food.heightLight ? primaryColor : Colors.grey.withOpacity(0.8), height: 1.6)),
                SizedBox(height: 5,),
                Row(children: [
                  Text("\$", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                  Text("${food.price}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                ],)
              ],
            ),
          ))
      ]),
    );
  }
}