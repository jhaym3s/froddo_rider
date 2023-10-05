import 'package:flutter/material.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/home/screens/location_done.dart';
import '../../../../core/configs/configs.dart';

class EnableLocationScreen extends StatefulWidget {
  static const routeName = "enableLocation";
  const EnableLocationScreen({super.key});

  @override
  State<EnableLocationScreen> createState() => _EnableLocationScreenState();
}

class _EnableLocationScreenState extends State<EnableLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            children: [
              Image.asset(AssetsImages.redLocation,height: 150.dy, width: 150.dx,),
              SpaceY(27.5.dy),
             Text("Turn on your location",
             textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextColorsLight)),
              SpaceY(8.dy),
            Text("Get access to available orders from your location info.",
            textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey)),
            ],
          ),
          GestureDetector(
            onTap: () {
              moveToNextScreen(context: context, page: LocationDoneScreen.routeName);
            },
            child: Container(
              height: 52.dy, width: kScreenWidth(context),
              margin: EdgeInsets.only(left: 24.dx, right: 24.dx, bottom: 68.dy),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on, color: kWhite,),
                  Text("Enable Location",
               textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kWhite)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}