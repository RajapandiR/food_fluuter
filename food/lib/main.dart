import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food/constants/colors.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/screens/customAppBar.dart';
import 'package:food/screens/foodList.dart';
import 'package:food/screens/foodListView.dart';
import 'package:food/screens/restaurant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 0;
  final restaurant = Restaurant.generateRestaurant();
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
    );
    return Scaffold(
      backgroundColor: backGround,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(Icons.arrow_back_ios_outlined, Icons.search_outlined),
          Restaurant1(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          } , restaurant),

          Expanded(child: FoodListView(
            selected, (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController,
            restaurant
          )),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 8,
                  width: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)

                ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color: primaryColor,
                    padding: 2,
                    width: 2,
                  )
                  )
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: primaryColor,
        elevation: 2,
        child: const Icon(Icons.shopping_bag_outlined, color: Colors.black,),),
    );
  }

}