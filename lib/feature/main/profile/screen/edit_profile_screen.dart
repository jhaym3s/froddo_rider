import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/dimensions.dart';
import 'package:froddo_rider/core/router/router.dart';

import '../../../../core/configs/configs.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = "editProfileScreen";
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final fullNameController = TextEditingController();
  final locationController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.dx),
            child: Column(
              children: [
                SpaceY(11.dy),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(onTap: (){
                      moveToOldScreen(context: context);
                    }),
                     Text("Edit Profile",
                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700,
                    color: kTextColorsLight),),
                 const SpaceX(20)
                  ],
                ),
              SpaceY(40.dy),
              const CircleAvatar(radius: 40,backgroundColor: Color(0xffF1F3F5),child: Icon(Icons.person,color: Color(0xffCBD2D9),),),
              SpaceY(8.dy),
              Text(kDummyName,
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: kTextColorsLight),),
                SpaceY(19.dy),
                NormalTextFormField(hintText: "", labelText: "Full  Name", controller: fullNameController, validator: (String? value){return null;}),
                SpaceY(16.dy),
                NormalTextFormField(hintText: "", labelText: "Location", controller: locationController, validator: (String? value){return null;}),
                SpaceY(16.dy),

                NormalTextFormField(hintText: "", labelText: "Phone Number", controller: numberController, validator: (String? value){return null;}),
                SpaceY(16.dy),
                NormalTextFormField(hintText: "", labelText: "Email Address", controller: numberController, validator: (String? value){return null;}),
                SpaceY(36.dy),
                CustomElevatedButton(onPressed: (){}, buttonText: "Save Changes")

              ],
            ),
          ),
        ),
      ),
    );
  }
}