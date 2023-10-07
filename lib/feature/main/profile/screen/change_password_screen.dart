import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/profile/screen/otp_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const routeName = "changePasswordScreen";
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
              Text("Change password",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
            SpaceY(8.dy),
            Text("Enter your registered phone number and we will send instructions to change your password",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey)),
               SpaceY(38.dy),
                NormalTextFormField(
                  controller: numberController,
                  labelText: "Phone Number",
                  hintText: "Phone Number",
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
                        moveToNextScreen(context: context, page: OTPScreen.routeName);
                       }, buttonText: "Change Password"),
                       SpaceY(40.dy),
                
            ],
           ),
         ),
       ),
     )
     
    );
  }
}