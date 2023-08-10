import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rent/screen/tabBar/amenity.dart';
import 'package:rent/screen/tabBar/description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rent/screen/tabBar/location.dart';

import '../contents/contents.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  // static const List<Tab> myTabs = <Tab>[
  //   Tab(text: 'LEFT'),
  //   Tab(text: 'RIGHT'),
  // ];
  late TabController _tabController = TabController(length: 3, vsync: this);
  final CarouselController _carouselController = CarouselController();
  int pageCount = 0;
  final List<String> imageList = ["assets/images/rent2.png", "assets/images/rent2.png"]; 

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: myTabs.length, vsync: this);
  // }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
        body: 
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Stack(
            children: [
              CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 425,
                  viewportFraction: 1,
                  onPageChanged: (index, reason){
                    setState(() {
                      pageCount = index;
                    });
                  }
                ), 
                items: imageList.map((e) =>  
                Image.asset(
                  e,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )).toList(),

              

                // child: Image.asset(
                //   "assets/images/rent2.png",
                //   width: double.infinity,
                //   fit: BoxFit.fill,
                // ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((e) => 
                  
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFFFFFFF).withOpacity(pageCount == e.key ? 0.9 : 0.4)
                    ),
                  )).toList(),
                )),

              // Image.asset(
              //   "assets/images/rent2.png",
              //   width: double.infinity,
              //   fit: BoxFit.fill,
              // ),

              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  child: Image.asset("assets/icons/left.png"),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Dwarco Private Limited",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/loc.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "North park Street, Beasnt Nagar, Guindy, Chennai 28.",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "₹ 8,500/day",
                  style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.024,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: const Color(0XFF0AB39C).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                      alignment: Alignment.center,
                      child: const Text("24/40 Seats Available",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF0AB39C),
                          ))),
                ),
                
    
                
              ],
            )),
    
            
    
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 10,
               padding: const EdgeInsets.symmetric(horizontal: 20),
               decoration: const  BoxDecoration(
                
                // color: Colors.white.withOpacity(0.0),
                border: Border(bottom: BorderSide(color: Color(0XFFEEEEEE))),
               ),
              child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: Color(0XFF463E54),
                  // labelStyle: theme.textTheme.headline1,
                  indicatorColor: primaryColor,
                  unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: "Description"),
                      Tab(text: "Amenities",),
                      Tab(text: "Location",)
                    ],
                  ),
            ),
    
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children:  [
                      DescriptionPage(),
                      AmenityPage(),
                      Location(),

                      // Container(
                      //   color: Colors.red,
                      //   height: 0,
                      //   width: 0,
                      //   // height: MediaQuery.of(context).size.height * 0.001,
                      //   // width: MediaQuery.of(context).size.width * 0.01,
                      //   child: Image.asset("assets/images/rent.png", height: 0,width: 0,))
                    ]),
                )
      ],
    ),
    
    bottomSheet: Container(

      color: backGroundColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
        onPressed: () {},
        child: const Text("Book Now", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),))
    ),
    
    );
  }
}
