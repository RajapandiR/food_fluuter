import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/constants/colors.dart';

import '../models/restaurant.dart';

class Restaurant1 extends StatelessWidget {
  // const Restaurant({super.key});
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name, style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(restaurant.waitTime, style: const TextStyle(color: Colors.white),)),
                    const SizedBox(width: 5,),
                    Text(restaurant.distance, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4), )),
                    const SizedBox(width: 5,),
                    Text(restaurant.label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4),))
                  ],)
                  
                ],
              ),
              ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(restaurant.logoUrl),
              )
            ],
          ),
          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restaurant.desc}"', style: const TextStyle(fontSize: 16),),
              Row(
                children: [
                  const Icon(Icons.star_outline, color: primaryColor,),
                  Text("${restaurant.score}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}