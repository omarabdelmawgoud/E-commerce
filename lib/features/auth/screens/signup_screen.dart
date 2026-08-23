import 'package:e_commerce/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Expanded(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Create Account',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600 ),),
            Text("lets create tour account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400 ))
            ,CustomTextfield()
          ],),
        ),
      )
    );
  }
}