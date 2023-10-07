import 'package:flutter/material.dart';
import 'package:froddo_rider/feature/authentication/enter_number_screen.dart';
import 'package:froddo_rider/feature/authentication/onboarding_screen.dart';
import 'package:froddo_rider/feature/authentication/sign_up.dart';
import 'package:froddo_rider/feature/authentication/verification_code_screen.dart';
import 'package:froddo_rider/feature/main/home/screens/enable_locations.dart';
import 'package:froddo_rider/feature/main/home/screens/home_screen.dart';
import 'package:froddo_rider/feature/main/home/screens/location_done.dart';
import 'package:froddo_rider/feature/main/profile/screen/change_password_screen.dart';
import 'package:froddo_rider/feature/main/profile/screen/edit_profile_screen.dart';
import 'package:froddo_rider/feature/main/profile/screen/enter_new_password.dart';
import 'package:froddo_rider/feature/main/profile/screen/otp_screen.dart';
import 'package:froddo_rider/feature/main/profile/screen/profile_screen.dart';
import 'package:froddo_rider/feature/main/profile/screen/verify_vehicle.dart';

import '../../feature/authentication/splash_screen.dart';

class AppRouter {
  static Route onGenerated(RouteSettings settings) {
    //print("Route name is ${settings.name}");
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case OnboardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case EnterNumberScreen.routeName:
        return MaterialPageRoute(builder: (_) => const EnterNumberScreen());
        case VerificationCodeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const VerificationCodeScreen());
       case EnableLocationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const EnableLocationScreen());
      case LocationDoneScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LocationDoneScreen());
        case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case EditProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
        case ChangePasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
        case OTPScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OTPScreen());
        case EnterNewPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const EnterNewPasswordScreen());
        case VerifyVehicle.routeName:
        return MaterialPageRoute(builder: (_) => const VerifyVehicle());


        
      default:
        return onError();
    }
  }

  static Route onError() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(
                  "Error Screen",
                  style: Theme.of(_).textTheme.displayLarge,
                ),
              ),
            ));
  }
}
