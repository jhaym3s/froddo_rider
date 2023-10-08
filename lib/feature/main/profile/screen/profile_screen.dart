import 'package:flutter/material.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/profile/screen/edit_profile_screen.dart';
import 'package:froddo_rider/feature/main/profile/screen/verify_vehicle.dart';

import '../../../../core/configs/configs.dart';
import '../widget/custom_divider.dart';
import 'change_password_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "profile_screen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.dx),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceY(64.dy),
              const CircleAvatar(radius: 40,backgroundColor: Color(0xffF1F3F5),child: Icon(Icons.person,color: Color(0xffCBD2D9),),),
              SpaceY(8.dy),
              Text(kDummyName,
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: kTextColorsLight),),
                SpaceY(4.dy),
                 Text("+23412345678",
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff8798A7)),),
                SpaceY(24.dy),
                const CustomDivider(),
                SpaceY(24.dy),
                Text("Account preferences",
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: kTextColorsLight),),
                SpaceY(16.dy),
                 ProfileTile(image: AssetsImages.profile,title: "Profile",onTap: (){
                  moveToNextScreen(context: context, page: EditProfileScreen.routeName);
                 },),
                 ProfileTile(image: AssetsImages.changePassword,title: "Change password",onTap: (){
                   moveToNextScreen(context: context, page: ChangePasswordScreen.routeName);
                 }),
                 ProfileTile(image: AssetsImages.profile,title: "Vehicle Verification",onTap: (){
                   moveToNextScreen(context: context, page: VerifyVehicle.routeName);
                 }),
                SpaceY(32.dy),
                const CustomDivider(),
                 SpaceY(24.dy),
                Text("Contact",
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: kTextColorsLight),),
                SpaceY(16.dy),
                 ProfileTile(image: AssetsImages.support,title: "Support",onTap: (){}),
                 ProfileTile(image: AssetsImages.about,title: "About",onTap: (){}),
                SpaceY(8.dy),
                const CustomDivider(),
                SpaceY(24.dy),
                const LogoutTile(),
                SpaceY(54.dy),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key, required this.image, required this.title, required this.onTap
  });
  final String image, title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.dx),
        margin: EdgeInsets.only(bottom: 20.dx),
        height: 48.dy, width: kScreenWidth(context),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffFAFBFC)
        ),
        child: Row(
          children: [
            Image.asset(image, height: 20.dy, width: 20.dx,),
            SpaceX(8.dx),
            Text(title,
       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff37414A)),),
      const Spacer(),
      const Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xff5B6C7C),)
          ],
        ),
      ),
    );
  }
}

class   LogoutTile extends StatelessWidget {
  const LogoutTile({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.dx),
      margin: EdgeInsets.only(bottom: 20.dx),
      height: 48.dy, width: kScreenWidth(context),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xffFAFBFC)
      ),
      child: Row(
        children: [
          Image.asset(AssetsImages.logout, height: 20.dy, width: 20.dx,),
          SpaceX(8.dx),
          Text("Log out",
     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xff37414A)),),
   
        ],
      ),
    );
  }
}