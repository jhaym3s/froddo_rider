import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/screens/home_screen.dart';
import '../../../core/configs/configs.dart';

class LocationDoneScreen extends StatefulWidget {
  static const routeName = "locationDonScreen";
  const LocationDoneScreen({super.key});

  @override
  State<LocationDoneScreen> createState() => _LocationDoneScreenState();
}

class _LocationDoneScreenState extends State<LocationDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.dx),
        child: Column(
          children: [
            SpaceY(68.dy),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomBackButton(onTap: (){})),
            SpaceY(49.dy),
                Image.asset(AssetsImages.rider,height: 200.dy, width: 200.dx,),
                SpaceY(27.5.dy),
               Text("Delivery location is ready ",
               textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w700,
                          color: kTextColorsLight)),
                SpaceY(8.dy),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 32.dx),
                child: Text("Don’t worry you can change your location later",
                textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: kGrey)),
              ),
              SpaceY(24.dy),
              CustomElevatedButton(onPressed: (){
                moveAndClearStack(context: context, page: HomeScreen.routeName);
              }, buttonText: "Let's Proceed")
          ],
        ),
      ),
    );
  }
}