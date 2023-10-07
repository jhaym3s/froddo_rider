import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/profile/screen/enter_new_password.dart';

class OTPScreen extends StatefulWidget {
  static const routeName = "OTP_screen";
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final numberCodeController = TextEditingController();
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
              Text("Enter OPT code",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
              SpaceY(8.dy),
            Text("We’ve sent a code to your number",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey)),
               SpaceY(38.dy),
               CustomPinCodeTextField(controller: numberCodeController, onSaved: (String ) {  }, onSubmitted: (String ) {  }, onComplete: (String ) {  },),
                 SpaceY(24.dy),
                Center(child: 
                RichText(text: TextSpan(
                              text: '60:00 seconds ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: kTextColorsLight),
                              children: [
                                TextSpan(
                                  text: 'Resend code',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp,
                                        color: Color(0xffF9A9A9),
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
                        SpaceY(24.dy),
                      CustomElevatedButton(onPressed: (){
                        moveToNextScreen(context: context, page: EnterNewPasswordScreen.routeName);
                       }, buttonText: "Verify"),
            ],
           ),
         ),
       ),
     )
     
    );
  }
}