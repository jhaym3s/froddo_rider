import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';

class EnterNumberScreen extends StatefulWidget {
  static const routeName = "enterNumber";
  const EnterNumberScreen({super.key});

  @override
  State<EnterNumberScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
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
                moveToOldScreen(context: context);
              }),
              SpaceY(24.dy),
              Text("Enter your phone number",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
            Text("We’ll text a code to verify your number",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
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
                       CustomElevatedButton(onPressed: (){}, buttonText: "Next"),
                       SpaceY(40.dy),
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