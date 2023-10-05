import 'package:flutter/material.dart';
import 'package:froddo_rider/core/configs/configs.dart';

class AvailableOrderCard extends StatelessWidget {
  const AvailableOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}



class AcceptedOrderCard extends StatelessWidget {
  const AcceptedOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}