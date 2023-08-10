import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rent/contents/contents.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/rent2.png",
                width: double.infinity,
                fit: BoxFit.fill,
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
                Image.asset("assets/icons/book.png"),
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
        const SizedBox(height: 20,),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
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
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text("24/40 Seats Available", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0XFF0AB39C),))),
                )
              ],
            )),
      ],
    ));
  }
}
