import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        
      ),
    );
  }
}