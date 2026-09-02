import 'package:e_commerce/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const Text(
                "lets create tour account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 24,),
              SizedBox(height: 4,),
              CustomTextfield(fieldName: "Full Name",hintText: "Enter your full name",obsecure: false),
              SizedBox(height: 16,),
              CustomTextfield(fieldName: "Email", hintText: "Enter your email address",obsecure: false),
              SizedBox(height: 16,),
              CustomTextfield(fieldName: "Password", hintText: "Enter your password",obsecure: true,),
              SizedBox(height: 12,),
              Text("By signing up you agree to our Terms, Privacy Policy, and Cookie Use")

            ],
          ),
        ),
      ),
    );
  }
}