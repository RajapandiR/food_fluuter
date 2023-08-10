import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../contents/contents.dart';

class AmenityPage extends StatefulWidget {
  const AmenityPage({super.key});

  @override
  State<AmenityPage> createState() => _AmenityPageState();
}

class _AmenityPageState extends State<AmenityPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: GridView.count(
        // shrinkWrap: true,
        primary: false,
        padding: EdgeInsets.zero,
        crossAxisCount: 2,
        // physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 5.1,
        children: [

            // ListTile(
            //   leading: Image.asset("assets/icons/wifi.png"),
            //   title: amenityText("Wifi", greyColor),
            // ),
            // ListTile(
            //   leading: Image.asset("assets/icons/wifi.png"),
            //   title: amenityText("Wifi", greyColor),
            // ),

          amentityRow("assets/icons/wifi.png", "Wifi", greyColor),
          amentityRow("assets/icons/lan.png", "Lan", greyColor),
          amentityRow("assets/icons/doc.png", "Maintenance", greyColor),
          amentityRow("assets/icons/wifi.png", "Access Card", greyColor),
          amentityRow("assets/icons/lan.png", "Furnishing", greyColor),
          amentityRow("assets/icons/doc.png", "Tea Coffee", greyColor), 
          amentityRow("assets/icons/doc.png", "Documentation", greyColor),
          amentityRow("assets/icons/lan.png", "Parking", greyColor), 
         
        ],
        ),
    );
  }

  Text amenityText(String text, Color clr) {
    return Text(
      text,
      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: clr),
    );
  }

  Row amentityRow(String icon, String text, Color clr){
    return Row(children: [
      Image.asset(icon),
      const SizedBox(width: 15,),
      Text(text, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: clr),)
    ]);
  }
}
