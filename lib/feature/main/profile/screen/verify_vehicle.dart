import 'package:flutter/material.dart';
import 'package:froddo_rider/core/components/components.dart';
import 'package:froddo_rider/core/configs/dimensions.dart';
import 'package:froddo_rider/core/router/router.dart';

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
                CustomElevatedButton(onPressed: (){}, buttonText: "Save Changes"),
                const Divider(),
                

              ],
            ),
          ),
        ),
      ),
    );
  }
}