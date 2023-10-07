import 'package:flutter/material.dart';

import '../../../../core/configs/configs.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({
    super.key, required this.title, required this.info
  });
  final String title, info;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: kGrey),
           ),
           SpaceY(4.dy),
          Text(
            info,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 14.sp,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w700,
            color: const Color(0xff333333)),
           ),
           SpaceY(16.dy),
          const Divider(),
          SpaceY(16.dy),
      ],
    );
  }
}