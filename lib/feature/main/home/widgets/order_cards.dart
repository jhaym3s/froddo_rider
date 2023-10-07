import 'package:flutter/material.dart';
import 'package:froddo_rider/core/configs/configs.dart';
import 'package:froddo_rider/feature/main/home/widgets/delivery_details.dart';

import '../../../../core/components/components.dart';

class AvailableOrderCard extends StatelessWidget {
  const AvailableOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        showModalSheetWithRadius(
          height: 125,
          context: context,
          returnWidget:  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.dx),
            child: Column(
              children: [
                SpaceY(24.dy),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.dx,vertical: 20.dy),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffF1F3F5)),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AssetsImages.food,height: 78.dy, width: 100.dx,),
                SpaceX(16.dx),
                Expanded(
                  child: Text(
                        'Ofada Rice with sauce',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff333333)),
                       ),
                ),
              ],
            ),
             
                  ],
                ),
                ), 
                SpaceY(16.dy),
                const DeliveryDetails(title: "Location:",info: "44/46 Olanrewaju Street Oregun, Lagos,Nigeria",),
                const DeliveryDetails(title: "Delivery time:",info: "20 mins",),
                const DeliveryDetails(title: "Distance:",info: "300 miles",),
                const DeliveryDetails(title: "Assigned by Chef:",info: "Nora",),
                SpaceY(24.dy),
                CustomElevatedButton(onPressed: (){
                  showOrderAcceptedDialog(context: context,onPressed: () {},);
                }, buttonText: "Accept Order"),
                SpaceY(16.dy),
                Container(
          decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffFEF1F1)),
        borderRadius: BorderRadius.circular(8)
      ),
                  height: 52.dy, width: kScreenWidth(context),
                  child: Center(
                    child: Text(
                          'Decline order',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor),
                         ),
                  ),
                )

              ],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.dy),
        padding: EdgeInsets.symmetric(horizontal: 20.dx,vertical: 20.dy),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F3F5)),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AssetsImages.deliveryCart,height: 24.dy, width: 24.dx,),
              SpaceX(16.dx),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food Delivery',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: const Color(0xff333333)),
                   ),
          Text(
                    '49 imo okoro streets, Ajah, Lagos',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff333333)),
               ),
              SpaceY(4.dy),
         RichText(
              text: TextSpan(
                text: 'Delivery time: ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: kGrey),
                children: [
                  TextSpan(
                    text: '20mins',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: kTextColorsLight,
                         // decoration: TextDecoration.underline,
                        ),
                  ),
                ],
              ),
            ),
                ],
              ),
               Spacer(),
               const Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xff999999),)
            ],
          ),
           
        ],
      ),
      ),
    );
  }
}



class AcceptedOrderCard extends StatelessWidget {
  const AcceptedOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalSheetWithRadius(
          height: 125,
          context: context,
          returnWidget:  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.dx),
            child: Column(
              children: [
                SpaceY(24.dy),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.dx,vertical: 20.dy),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffF1F3F5)),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AssetsImages.food,height: 78.dy, width: 100.dx,),
                SpaceX(16.dx),
                Expanded(
                  child: Text(
                        'Ofada Rice with sauce',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff333333)),
                       ),
                ),
              ],
            ),
             
                  ],
                ),
                ), 
                SpaceY(16.dy),
                const DeliveryDetails(title: "Location:",info: "44/46 Olanrewaju Street Oregun, Lagos,Nigeria",),
                const DeliveryDetails(title: "Delivery time:",info: "20 mins",),
                const DeliveryDetails(title: "Distance:",info: "300 miles",),
                const DeliveryDetails(title: "Assigned by Chef:",info: "Nora",),
                SpaceY(24.dy),
                Container(
              height: 48.dy, width: kScreenWidth(context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on, color: kWhite,),
                  Text("View Location on Map",
               textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: kWhite)),
                ],
              ),
            ),

              ],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.dy),
        padding: EdgeInsets.symmetric(horizontal: 20.dx,vertical: 20.dy),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F3F5)),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AssetsImages.deliveryCart,height: 24.dy, width: 24.dx,),
              SpaceX(16.dx),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food Delivery',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: const Color(0xff333333)),
                   ),
          Text(
                    '49 imo okoro streets, Ajah, Lagos',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff333333)),
               ),
              SpaceY(4.dy),
         RichText(
              text: TextSpan(
                text: 'Delivery time: ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: kGrey),
                children: [
                  TextSpan(
                    text: '20mins ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: kTextColorsLight,
                         // decoration: TextDecoration.underline,
                        ),
                  ),
                  TextSpan(
                    text: '● Pending',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: kWarning,
                         // decoration: TextDecoration.underline,
                        ),
                  ),
                ],
              ),
            ),
                ],
              ),
               Spacer(),
               const Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xff999999),)
            ],
          ),
           
        ],
      ),
      ),
    );
  }
}

