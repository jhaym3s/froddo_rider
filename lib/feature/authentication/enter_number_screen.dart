import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/authentication/verification_code_screen.dart';

class EnterNumberScreen extends StatefulWidget {
  static const routeName = "enterNumber";
  const EnterNumberScreen({super.key});

  @override
  State<EnterNumberScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  final numberController = TextEditingController();
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
            SpaceY(8.dy),
            Text("We’ll text a code to verify your number",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey)),
               SpaceY(38.dy),
                NormalTextFormField(
                  controller: numberController,
                  labelText: "Phone Number",
                  hintText: "2349012345678",
                  inputFormatters: const [],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your number';
                    }
                    return null;
                  },
                ),
                     SpaceY(22.dy),
                       CustomElevatedButton(onPressed: (){
                        moveToNextScreen(context: context, page: VerificationCodeScreen.routeName);
                       }, buttonText: "Next"),
                       SpaceY(40.dy),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Joining our app means you agree with our ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: const Color(0xff5B6C7C)),
                              children: [
                                TextSpan(
                                  text: 'Terms of Use and Privacy Policy',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: const Color(0xff5B6C7C),
                                        decoration: TextDecoration.underline,
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