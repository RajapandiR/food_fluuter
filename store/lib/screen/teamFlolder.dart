import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    double availableWithScreen = 0;
  @override
  Widget build(BuildContext context) {
    availableWithScreen = MediaQuery.of(context).size.width - 50;
    return  Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
              children: [
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                      alignment: Alignment.bottomCenter,
                      height: 170,
                      decoration: BoxDecoration(color: Colors.blue.shade800),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                      Text("Riotters", style: TextStyle(fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold),),
                                      Text("Team Floder", style: TextStyle(fontSize: 17, color: Colors.white),)
                                  ],
                              ),
                              Row(children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      // child: Icon(Icons.search, size: 28, color: Colors.white,),
                                      child: IconButton(
                                          padding: EdgeInsets.zero,
        
                                          onPressed: () {},
                                          icon: const Icon(Icons.search, size: 28, color: Colors.white,), ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      // child: Icon(Icons.search, size: 28, color: Colors.white,),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.notifications, size: 28, color: Colors.white,), ),
                                  )
                              ],)
                          ],
                      ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            RichText(
                                text: const TextSpan(
                                    text: "Storage",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black ),
                                     children: [
                                        TextSpan(
                                            text:  "9.1/10GB",
                                            style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300 ),
                                        )]
                                ),
                               
                            ),
                  
                            const Text("Upgrade", style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),)
                        ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(children: [
                        buildFileSizeChart("SOURCES", Colors.blue, .3 ),
                        const SizedBox(width: 2,),
                        buildFileSizeChart("DOCS", Colors.red, .25 ),
                        const SizedBox(width: 2,),
                        buildFileSizeChart("IMAGES", Colors.yellow, .20 ),
                        const SizedBox(width: 2,),
                        buildFileSizeChart("", Colors.grey, .23)
                    ],),
                  ),
                  const SizedBox(height: 15,),
                  const Divider( height: 20, ),
        
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(25),
                    children:  [
                      const Text("Recently Update", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        
                      const SizedBox(height: 15,),
                      Row(children: [
                       buildFileName("sketch", "desktop", ".sketch"),
                       SizedBox(width: availableWithScreen * 0.03,),
                       buildFileName("sketch", "mobile", ".sketch"),
                       SizedBox(width: availableWithScreen * 0.03,),
                       buildFileName("prd", "interaction", ".prd")
                      ],),
                      const Divider(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Projects", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                          Text("Create new", style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),)
                        ],
                      ),
        
                      const SizedBox(height: 15,),
        
                      buildProjectFloder("Chatbox"),
                      buildProjectFloder("TimeNote"),
                      buildProjectFloder("Something"),
                      buildProjectFloder("Others"),
                    ],
                  ),
        
                 
              ],
          ),
        ),
        floatingActionButton: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
            ]
          ),
          child: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "Time"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Folder")
        ]),
    );
  }

  Container buildProjectFloder(String projectName) {
    return Container(
      height: 66,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children:  [
              const Icon(Icons.folder, color: Colors.blue,),
              const SizedBox(width: 12,),
              Text(projectName, style: const TextStyle(fontSize: 16 ),)
            ],
          ),
          IconButton(onPressed: () {}, icon: const  Icon(Icons.more_vert_rounded, color: Colors.grey,))
        ],
      ),
    );
  }

  Column buildFileName(String image, String filename, String extension) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)

          ),
          height: 110,
          padding: const EdgeInsets.all(25),
          child: Image.asset("assets/$image.png"),
        ),
        const SizedBox(height: 15,),
        RichText(
          text:  TextSpan(
            text: filename,
            style: const TextStyle(fontSize: 14, color: Colors.black,),
            children: [
              TextSpan(
                text: extension,
                style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w300)
              )
            ]
          ),
          
          )
      ],
    );
  }

  Column buildFileSizeChart(String title, Color color, double widthPer) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
                width: availableWithScreen * widthPer,
                height: 4,
                color: color,
            ),
            const SizedBox(height: 8,),
            Text(title, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
        ],
    );
  }
}