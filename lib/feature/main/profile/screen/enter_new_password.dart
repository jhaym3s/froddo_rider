import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/profile/screen/otp_screen.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  static const routeName = "enterNewPassword";
  const EnterNewPasswordScreen({super.key});

  @override
  State<EnterNewPasswordScreen> createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
  final oldPasswordController = TextEditingController();
    final newPasswordController = TextEditingController();
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
              Text("Enter New password",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
            SpaceY(8.dy),
            Text("Your new password must be different from the old password",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey)),
               SpaceY(38.dy),
                PasswordTextFormField(
                  controller: oldPasswordController,
                  labelText: "New Password",
                  hintText: "Password",
                  inputFormatters: const [],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  }, hidePassword: hidePassword,
                  suffixFunction: () {
                     setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
                SpaceY(16.dy),
                PasswordTextFormField(
                  controller: newPasswordController,
                  labelText: "Confirm Password",
                  hintText: "Password",
                  inputFormatters: const [],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  }, hidePassword: hidePassword,
                  suffixFunction: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
                     SpaceY(40.dy),
                       CustomElevatedButton(onPressed: (){
                        moveToNextScreen(context: context, page: OTPScreen.routeName);
                       }, buttonText: "Reset Password"),
                       SpaceY(40.dy),
                
            ],
           ),
         ),
       ),
     )
     
    );
  }
}