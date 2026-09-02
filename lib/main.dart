import 'package:e_commerce/core/routes/app_routes.dart';
import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/features/auth/screens/signup_screen.dart';
import 'package:e_commerce/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.onboardingScreen,
      routes: {
        AppRoutes.signupScreen: (context) => const SignupScreen(),
        AppRoutes.onboardingScreen:(context) => OnboardingScreen()
      },
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Ecoo',
    );
  }
}
