import 'package:flutter/material.dart';
import 'package:rent/contents/contents.dart';
import 'package:rent/screen/detailPage.dart';
import 'package:rent/screen/detailPages.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                        ),
                        hintText: "Search your place",
                        hintStyle: const TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w400),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Icon(Icons.search, weight: 10,color: Colors.grey,))
                      ),
                      
                    ),
                  ),
          
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset("assets/images/filter.png", width: 20,),
                  )
          
          
                ],
              ),
          
              const SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 2.7,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: const imageCard()), separatorBuilder: (_, index) => const SizedBox(height: 10,), itemCount: 6),
              ),
          
              
          
              
            ]),
          ),
        ),
      ),
    );
  }
}

class imageCard extends StatelessWidget {
  const imageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: AlignmentDirectional.topStart,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset("assets/images/rent.png", fit: BoxFit.fill,width: double.infinity,),
                
              Container(
                height: MediaQuery.of(context).size.height * 0.043,
                width: MediaQuery.of(context).size.width * 0.2,
                // height: 34,
                // width: 84,
                decoration: const BoxDecoration(
                  
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(10)
                  )
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text("₹ 1500/hr", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),)),
              )
                
              //  Positioned(
              //   bottom: 0,
              //   right: 0,
              //   // color: Colors.red,
              //   child: Text("sssss"),
              // )
            ],
          ),
        
          const SizedBox(height: 20),
          const Text("Dwarco Private Limited", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),),
          const SizedBox(height: 10),
          const Text("North park Street, Beasnt Nagar, Guindy, Chennai 28.", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),),
          const SizedBox(height: 10),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: const [
                Image(image: AssetImage("assets/icons/book.png"), ),
                SizedBox(width: 5,),
                Text("4.8kms away ", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Colors.grey),)
              ],
            ),
            Row(
              children: const [
                Image(image: AssetImage("assets/icons/user.png"), ),
                SizedBox(width: 5,),
                Text("24/28 seats Available ", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Colors.grey),)
              ],
            ),
          ],),
        ],
      ),
    );
  }
}


