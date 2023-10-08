import 'package:flutter/material.dart';
import 'package:froddo_rider/core/configs/configs.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.dy, width: double.infinity,
        color: Color(0xffFAFBFC)
    );
  }
}