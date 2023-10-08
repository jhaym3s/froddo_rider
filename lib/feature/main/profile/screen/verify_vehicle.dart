import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/dimensions.dart';
import 'package:froddo_rider/core/router/router.dart';
import 'package:froddo_rider/feature/main/profile/widget/custom_divider.dart';

import '../../../../core/configs/configs.dart';

class VerifyVehicle extends StatefulWidget {
  static const routeName = "verifyVehicle";
  const VerifyVehicle({super.key});

  @override
  State<VerifyVehicle> createState() => _VerifyVehicleState();
}

class _VerifyVehicleState extends State<VerifyVehicle> {
  final vehicleController = TextEditingController();
  final engineController = TextEditingController();
  final vehicleNumberController = TextEditingController();
  final yearController = TextEditingController();
  final colorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceY(11.dy),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(onTap: (){
                      moveToOldScreen(context: context);
                    }),
                     Text("Vehicle Info",
                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700,
                    color: kTextColorsLight),),
                 const SpaceX(20)
                  ],
                ),
              SpaceY(40.dy),
                NormalTextFormField(hintText: "Toyata", labelText: "Vehicle make/model", controller: vehicleController, validator: (String? value){return null;}),
                SpaceY(16.dy),
                NormalTextFormField(hintText: "A13333....", labelText: "Engine number", controller: engineController, validator: (String? value){return null;}),
                SpaceY(16.dy),
                NormalTextFormField(hintText: "AKU-DDCU", labelText: "Vehicle plate number", controller: vehicleNumberController, validator: (String? value){return null;}),
                SpaceY(16.dy),
                NormalTextFormField(hintText: "2017", labelText: "Year of manufacture.", controller: yearController, validator: (String? value){return null;}),
                 SpaceY(16.dy),
                NormalTextFormField(hintText: "Black", labelText: "Color of the vehicle.", controller: colorController, validator: (String? value){return null;}),
                SpaceY(36.dy),
               
                const CustomDivider(),
                SpaceY(40.dy),
                Text("Proof of Ownership",
                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: kTextColorsLight),),
                SpaceY(16.dy),
                ProofTile( title: "Proof of Insurance", onTap: (){}),
                SpaceY(16.dy),
                ProofTile( title: "Driver's license", onTap: (){}),
                SpaceY(16.dy),
                 CustomElevatedButton(onPressed: (){}, buttonText: "Save Changes"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ProofTile extends StatelessWidget {
  const ProofTile({
    super.key, required this.title, required this.onTap
  });
  final String  title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.dx),
        margin: EdgeInsets.only(bottom: 16.dy),
        height: 48.dy, width: kScreenWidth(context),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffFAFBFC)
        ),
        child: Row(
          children: [
            Image.asset(AssetsImages.docs, height: 18.dy, width: 18.dx,),
            SpaceX(8.dx),
       Text(title,
       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff37414A)),),
      const Spacer(),
      Container(
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(4), color: Color(0xff00B74C)),
        height: 32.dy,width: 81.dx,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        const Icon(Icons.file_upload_outlined, color: kWhite,),
        Text("Upload",
       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: kWhite),),
          ],
        ),
      )
          ],
        ),
      ),
    );
  }
}
