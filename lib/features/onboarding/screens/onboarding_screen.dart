import 'package:e_commerce/core/routes.dart';
import 'package:e_commerce/core/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 47),
          child: Column(
            children: [
              Expanded(child: Stack(
                children: [
                  Positioned(top: 24,child: Image.asset("assets/images/Define yourself in your unique way.png")),
                  Positioned(top: 322,child: Image.asset("assets/images/back_wave.png"),),
                  Positioned(top: 271,child: Image.asset("assets/images/back_wave.png"),),
                  Positioned(top: 224.37,child: Image.asset("assets/images/back_wave.png"),),
                  Positioned(top: 176.34,child: Image.asset("assets/images/back_wave.png"),),
                  Positioned(top: 32,child: Image.asset("assets/images/onboardin_imager.png")),
                ],
              ),
              
              ),
              SizedBox(
                height: 107,width: 390,
                child: Column(
                  children: [
                    Spacer(),
                    Custombutton(backgroundColor: Colors.black, text: "Get Started",trailing: Icons.arrow_forward,ontap: () {
                      Navigator.pushReplacementNamed(context, AppRoutes.signupScreen);
                    },),
                    SizedBox(height:27 ,)
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}