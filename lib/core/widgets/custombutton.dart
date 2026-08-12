import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.backgroundColor, required this.text,this.leading,this.trailing,required this.ontap});
  final Color backgroundColor;
  final IconData? leading;
  final IconData? trailing;
  final String text;
  final VoidCallback ontap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 54,
        width: 341,
        decoration: BoxDecoration(color: backgroundColor,borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(leading),
            Text(text,style: TextStyle(fontSize:16,color: Colors.white ),),
            SizedBox(width: 8,),
            Icon(trailing,color: Colors.white,size: 24,)
          ],
        ),
      ),
    );
  }
}