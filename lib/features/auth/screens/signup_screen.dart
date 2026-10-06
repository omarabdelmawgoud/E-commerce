import 'package:e_commerce/core/widgets/custom_textfield.dart';
import 'package:e_commerce/core/widgets/custombutton.dart';
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
                'Create an account',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Let's create your account.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 24,),
              CustomTextfield(fieldName: "Full Name",hintText: "Enter your full name",obsecure: false),
              SizedBox(height: 16,),
              CustomTextfield(fieldName: "Email", hintText: "Enter your email address",obsecure: false),
              SizedBox(height: 16,),
              CustomTextfield(fieldName: "Password", hintText: "Enter your password",obsecure: true,),
              SizedBox(height: 12,),
              Text("By signing up you agree to our Terms, Privacy Policy, and Cookie Use",style: TextStyle(color: Color(0xff1A1A1A)),),
              SizedBox(height: 24,),
              Center(child: Custombutton(backgroundColor: Colors.black, text: "Create an account", ontap:() => Null)),
              SizedBox(height: 24,),
              Row(children: [
                Expanded(child: Divider(color: Color(0xffE6E6E6))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("or"),
                ),
                Expanded(child: Divider(color: Color(0xffE6E6E6),)),
              ],),
              SizedBox(height: 24,),
              Custombutton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                borderColor: const Color(0xffD9D9D9),
                leadingWidget: Image.asset(
                  'assets/images/logos_google-icon.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
                text: "Sign up with Google",
                ontap: () => Null,
              ),
              SizedBox(height: 16,),
              Custombutton(
                leading: Icons.facebook,
                backgroundColor: Color(0xff1877F2),
                text: "Sign up with Facebook",
                ontap: () => Null,
              ),
              Spacer(),
              Center(child: Text("Already have an account? Log In")),
              SizedBox(height: 10,),
          
            ],
          ),
        ),
      ),
    );
  }
}


 