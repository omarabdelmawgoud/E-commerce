import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.fieldName,
    required this.hintText, required this.obsecure,
    this.trailingIcon
  });
  final String fieldName;
  final String hintText;
  final bool obsecure;
  final IconData? trailingIcon;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
   IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
        ),
        SizedBox(height: 4),
        Form(
          child: SizedBox(
            height: 52,
            width: double.infinity,
            child: TextFormField(
              obscureText:widget.obsecure ,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            
                border: outlineInputBordewr(Colors.grey),
                enabledBorder: outlineInputBordewr(Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder outlineInputBordewr(Color borderColor) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: borderColor),
  );
}
