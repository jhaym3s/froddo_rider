import 'package:flutter/material.dart';

import 'core/configs/configs.dart';
import 'core/router/app_route.dart';
import 'feature/authentication/onboarding_screen.dart';
import 'feature/authentication/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kCompanyName,
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.system,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().lightTheme,
      home: 
      //const CustomNavigationBar(),
       const OnboardingScreen(),
      onGenerateRoute: AppRouter.onGenerated,
      builder: (context, widget){
        final media = MediaQuery.of(context);
        Dims.setSize(media);
        return widget!;
      },
    );
  }
}

