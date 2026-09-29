import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.backgroundColor, required this.text, this.leading,  this.trailing, this.foregroundColor = Colors.white, this.borderColor, required this.ontap, this.leadingWidget});
  final Color backgroundColor;
  final IconData? leading;
  final IconData? trailing;
  final Widget? leadingWidget;
  final Color foregroundColor;
  final Color? borderColor;
  final String text;
  final VoidCallback ontap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: borderColor == null ? null : Border.all(color: borderColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leadingWidget ?? (leading != null ? Icon(leading, color: foregroundColor) : const SizedBox.shrink()),
            if (leadingWidget != null || leading != null) const SizedBox(width: 10),
            Text(text, style: TextStyle(fontSize: 16, color: foregroundColor, fontWeight: FontWeight.w400)),
            const SizedBox(width: 8),
            if (trailing != null) Icon(trailing, color: foregroundColor, size: 24),
          ],
        ),
      ),
    );
  }
}