import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/custom_elevated_button.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/authentication/sign_up.dart';

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
        body: Container(
          height: kScreenHeight(context),width: kScreenWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsImages.onboarding), 
                fit: BoxFit.cover,
              ),
              ),
        child: Column(
          children: [
            const Spacer(),
            // SpaceY(482.dy),
            Text("Delivered with Safety",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                      color: kWhite)),
            SpaceY(8.dy),
            Text("Dispatching smiles, one delivery at a time!",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffE3E6EA))),
            SpaceY(32.dy),
            CustomElevatedButton(onPressed: (){
              moveToNextScreen(context: context, page: SignUpScreen.routeName);
            }, buttonText: "Create account"),
            SpaceY(48.dy),
            Center(child: RichText(
                          text: TextSpan(
                            text: 'I have an account already ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    color: Color(0xffFAFBFC)),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: kPrimaryColor,
                                     // decoration: TextDecoration.underline,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                   // moveAndClearStack(context: context, page: SignInScreen.routeName);
                                    // moveToNextScreen(
                                    // context: context,
                                    // page: SignInScreen.routeName);
                                 },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SpaceY(114.dy),
          ],
        ),
        ),
      ),
    );
  }
}