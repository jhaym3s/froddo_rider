import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/authentication/enter_number_screen.dart';
import 'package:froddo_rider/feature/authentication/onboarding_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = "signUpScreen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
       child: SafeArea(
         child: Padding(
           padding:  EdgeInsets.symmetric(horizontal: 24.dx),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceY(8.dy),
              CustomBackButton(onTap: (){
                 moveAndClearStack(context: context, page: OnboardingScreen.routeName);
              }),
              SpaceY(24.dy),
              Text("Create an account",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
            SpaceY(8.dy),
            Text("Create an account in few minutes.",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.sp,
                fontWeight: 
                FontWeight.w400,
                color: kGrey)),
               SpaceY(38.dy),
            NormalTextFormField(
                      controller: firstNameController,
                      labelText: "First Name",
                      hintText: kDummyName,
                      inputFormatters: const [],
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                     SpaceY(22.dy),
               NormalTextFormField(
                      controller: lastNameController,
                      labelText: "Last Name",
                      hintText: kDummyName,
                      inputFormatters: const [],
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    SpaceY(22.dy),
                    PasswordTextFormField(
                      //keyboardType: TextInputType.phone,
                      controller: passwordController,
                      hintText: kDummyPassword,
                      hidePassword: hidePassword,
                      labelText: "Password",
                      inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp('[ ]')),
                        ],
                      suffixFunction: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      }, validator: (String? value) { 
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                       },),
                       SpaceY(40.dy),
                       CustomElevatedButton(onPressed: (){
                        moveToNextScreen(context: context, page: EnterNumberScreen.routeName);
                       }, buttonText: "Next"),
                       SpaceY(40.dy),
                       Row(
                        children: [
                          const Expanded(child: Divider()),
                          Text("or",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
                          const Expanded(child: Divider()),
                        ],
                       ),
                       SpaceY(40.dy),
                       Container(
                        height: 60.dy, width: kScreenWidth(context),
                        decoration: BoxDecoration(
                          border: Border.all(color:const Color(0xffF1F3F5)),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AssetsImages.googleLogo,height: 24.dy, width: 24.dx,),
                            SpaceX(8.dx),
                            Text("Sign in with Google",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff5B6C7C))),
                          ],
                        ),
                      ),
                      SpaceY(32.dy),
                      Center(
                  child: RichText(
                            text: TextSpan(
                              text: 'I have an account already ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: kTextColorsLight),
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
                      SpaceY(52.dy)
            ],
           ),
         ),
       ),
     )
     
    );
  }
}