import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
    const CustomButtom(this.icon, {super.key, required this.text, required this.color, required this.textCOlor, required this.textColor});
  final String text;
  final Color color;
  final Color textCOlor;
  final IconData? icon;
  final Color? textColor;

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 84,vertical: 16),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(widget.text,style: TextStyle(fontSize: 17,height: 140,fontWeight: FontWeight.w500),),
      );
  }
}