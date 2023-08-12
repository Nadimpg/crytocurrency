import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    required this.fontsize,
    required this.fontweight,
    super.key});

  final String text;
  final double fontsize;
  final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return   Text(text,style: TextStyle(color: AppColors.whiteColor,fontSize: fontsize,fontWeight:fontweight,fontFamily: 'Inter' ),);
  }
}
