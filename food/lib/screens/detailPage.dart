import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/constants/colors.dart';
import 'package:food/screens/customAppBar.dart';

import '../models/food.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({super.key});

  final Food food;
  const DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                Icons.arrow_back_ios_outlined,
                Icons.favorite_outline,
                leftCallBack: () => Navigator.of(context).pop(),
              ),
              SingleChildScrollView(
                child: Container(
                  color: primaryColor,
                  height: 250,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                    color: backGround),
                              ))
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.all(15),
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      offset: Offset(-1, 10),
                                      blurRadius: 10)
                                ]),
                            child: Image.asset(
                              food.imageUrl,
                              fit: BoxFit.contain,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // height: 5000,
                  padding: EdgeInsets.all(25),
                  // padding: EdgeInsets.only(left: 25, right: 25, bottom: MediaQuery.of(context).padding.bottom),
                  color: backGround,
                  child: Column(
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconText(Icons.access_time_filled_outlined,
                              Colors.blue, food.waitTime),
                          IconText(Icons.star_outline, Colors.amber,
                              food.score.toString()),
                          IconText(Icons.local_fire_department_outlined,
                              Colors.red, food.cal)
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 40,
                        child: Stack(children: [
                          Align(
                            alignment: Alignment(-0.3, 0),
                            child: Container(
                              height: double.maxFinite,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${food.price}",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.3, 0),
                            child: Container(
                              height: double.maxFinite,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Text(
                                      food.quantity.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Ingredients",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 100,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Column(children: [
                                    Image.asset(
                                      food.ingredients[index].values.first,
                                      width: 50,
                                    ),
                                    Text(food.ingredients[index].keys.first)
                                  ]),
                                ),
                            separatorBuilder: (_, index) => SizedBox(
                                  width: 15,
                                ),
                            itemCount: food.ingredients.length),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text(food.about, style: TextStyle(fontSize: 16, height: 1.5, wordSpacing: 1.2),),
                    ],
                  ),
                ),
              ),
            ]),
        floatingActionButton: Container(
          width: 100,
          height: 50,
          child: RawMaterialButton(
            onPressed: (){},
            fillColor: primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.shopping_bag_outlined, color: Colors.black,size: 30,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Text(food.quantity.toString(), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
              )
            ],),
          ),
        ),
        
        );
  }
}

Widget IconText(IconData icon, Color clr, String text) {
  return Row(
    children: [
      Icon(
        icon,
        color: clr,
        size: 20,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 16),
      )
    ],
  );
}



// Scaffold(
//         backgroundColor: primaryColor,
//         body: SingleChildScrollView(
//           child: Column(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomAppBar(
//                   Icons.arrow_back_ios_outlined,
//                   Icons.favorite_outline,
//                   leftCallBack: () => Navigator.of(context).pop(),
//                 ),
//                 Container(
//                   color: primaryColor,
//                   height: 250,
//                   child: Stack(
//                     children: [
//                       Column(
//                         children: [
//                           Expanded(flex: 1, child: Container()),
//                           Expanded(
//                               flex: 1,
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(50),
//                                         topRight: Radius.circular(50)),
//                                     color: backGround),
//                               ))
//                         ],
//                       ),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                             margin: EdgeInsets.all(15),
//                             width: 250,
//                             height: 250,
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.grey.withOpacity(0.3),
//                                       offset: Offset(-1, 10),
//                                       blurRadius: 10)
//                                 ]),
//                             child: Image.asset(
//                               food.imageUrl,
//                               fit: BoxFit.contain,
//                             )),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   // height: 5000,
//                   padding: EdgeInsets.all(25),
//                   // padding: EdgeInsets.only(left: 25, right: 25, bottom: MediaQuery.of(context).padding.bottom),
//                   color: backGround,
//                   child: Column(
//                     children: [
//                       Text(
//                         food.name,
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconText(Icons.access_time_filled_outlined,
//                               Colors.blue, food.waitTime),
//                           IconText(Icons.star_outline, Colors.amber,
//                               food.score.toString()),
//                           IconText(Icons.local_fire_department_outlined,
//                               Colors.red, food.cal)
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Container(
//                         width: double.maxFinite,
//                         height: 40,
//                         child: Stack(children: [
//                           Align(
//                             alignment: Alignment(-0.3, 0),
//                             child: Container(
//                               height: double.maxFinite,
//                               width: 120,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.withOpacity(0.3),
//                                   borderRadius: BorderRadius.circular(30)),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: 15,
//                                   ),
//                                   Text(
//                                     "\$",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "${food.price}",
//                                     style: TextStyle(
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment(0.3, 0),
//                             child: Container(
//                               height: double.maxFinite,
//                               width: 120,
//                               decoration: BoxDecoration(
//                                   color: primaryColor,
//                                   borderRadius: BorderRadius.circular(30)),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Text(
//                                     "-",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.all(12),
//                                     decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         shape: BoxShape.circle),
//                                     child: Text(
//                                       food.quantity.toString(),
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   Text(
//                                     "+",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           )
//                         ]),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Ingredients",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Container(
//                         height: 100,
//                         child: ListView.separated(
//                             scrollDirection: Axis.horizontal,
//                             itemBuilder: (context, index) => Container(
//                                   padding: EdgeInsets.all(12),
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(30)),
//                                   child: Column(children: [
//                                     Image.asset(
//                                       food.ingredients[index].values.first,
//                                       width: 50,
//                                     ),
//                                     Text(food.ingredients[index].keys.first)
//                                   ]),
//                                 ),
//                             separatorBuilder: (_, index) => SizedBox(
//                                   width: 15,
//                                 ),
//                             itemCount: food.ingredients.length),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "About",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 15,),
//                       Text(food.about, style: TextStyle(fontSize: 16, height: 1.5, wordSpacing: 1.2),)
//                     ],
//                   ),
//                 ),
//               ]),
//         ),
//         floatingActionButton: Container(
//           width: 100,
//           height: 50,
//           child: RawMaterialButton(
//             onPressed: (){},
//             fillColor: primaryColor,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             elevation: 2,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//               Icon(Icons.shopping_bag_outlined, color: Colors.black,size: 30,),
//               Container(
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle
//                 ),
//                 child: Text(food.quantity.toString(), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
//               )
//             ],),
//           ),
//         ),
        
//         );
