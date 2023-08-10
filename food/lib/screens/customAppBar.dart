import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/constants/colors.dart';

// class CustomAppBar extends StatefulWidget {
//   final IconData leftIcon;
//   final IconData righIcon;
//   final Function? leftCallBack;
//   const CustomAppBar(this.leftIcon, this.righIcon, {this.leftCallBack});  

//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }

// class _CustomAppBarState extends State<CustomAppBar> {
  
//   @override
//   Widget build(BuildContext context) {
//     IconData? leftIcon;
//     return Container(
//       child: Padding(
//         padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 20, right: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             GestureDetector(
//               onTap: widget.leftCallBack != null ? () => widget.leftCallBack!() : null, 
//               child: _buildIcon(widget.leftIcon)),
//               _buildIcon(widget.righIcon)
//           ],
//         ),
//       ),
//     );
//   }
// }

class CustomAppBar extends StatelessWidget {

   final IconData leftIcon;
  final IconData righIcon;
  final Function? leftCallBack;
  const CustomAppBar(this.leftIcon, this.righIcon, {this.leftCallBack});  
  // const CustomAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: primaryColor,
      child: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: leftCallBack != null ? () => leftCallBack!() : null, 
              child: _buildIcon(leftIcon)),
              _buildIcon(righIcon)
          ],
        ),
      ),
    );
  }
}

Widget _buildIcon(IconData icon){
  return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: Icon(icon),
      // child: Text("ssssssssssssssssssssss", style: TextStyle(color: Colors.black),),
    );
}

// class _buildIcon extends StatelessWidget {
//   const _buildIcon({
//     super.key,
//     required this.widget,
//   });

//   final CustomAppBar widget;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         shape: BoxShape.circle
//       ),
//       child: Icon(widget.leftIcon),
//       // child: Text("ssssssssssssssssssssss", style: TextStyle(color: Colors.black),),
//     );
//   }
// }


