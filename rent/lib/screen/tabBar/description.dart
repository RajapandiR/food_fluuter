import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rent/contents/contents.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {

  final List<String> dayList = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
  int dayCount = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "About",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10,),
          const Text(
            "Amet minim mollit non deserunt ullamco est sit aliqua dolo doamet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, height: 1.5),
          ),
          const SizedBox(height: 10,),
          const Text(
            "Opening Timings",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text("8.00 Am to 8.00 Pm", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
              
              Container(
                
                // padding: const EdgeInsets.all(2),
                height: 26,
                width: 185,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                     setState(() {
                        dayCount = index;
                     });
                    },
                    child: Container(
                      // margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.all(6),
                    // width: 24,
                    // height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: dayCount == index ? const  Color(0XFF5853C2) : Colors.white,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child:  Text(dayList[index], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,color: dayCount == index ? Colors.white : Color(0XFF463E54)),),
                                  ),
                  ), 
                  separatorBuilder: (_, index) => const SizedBox(width: 6,), 
                  itemCount: dayList.length),
              ),
              
              
            ],
          ),
          const SizedBox(height: 10,),
          const Text(
            "Contect Details",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(color: const  Color(0XFFA7A7A7)),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Image.asset("assets/icons/call.png"),
                    const SizedBox(width: 10,),
                    const Text("Call Now", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(color: const  Color(0XFFA7A7A7)),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Image.asset("assets/icons/whatsapp.png"),
                  const SizedBox(width: 10,),
                  const Text("Whats App", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                ],
              ),
            
            ),
            
          ],),
          const SizedBox(height: 80,)
        ],

      ),
    );
  }

}
