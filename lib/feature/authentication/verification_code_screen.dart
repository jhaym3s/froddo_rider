import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';

class VerificationCodeScreen extends StatefulWidget {
  static const routeName = "verificationCodeScreen";
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
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
              Text("Enter verification code",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
              SpaceY(8.dy),
            Text("We have sent a code to +234806****733",
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
                     SpaceY(24.dy),
                       CustomElevatedButton(onPressed: (){}, buttonText: "Next"),
                SpaceY(40.dy),
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
                      SpaceY(52.dy)
            ],
           ),
         ),
       ),
     )
     
    );
  }
}