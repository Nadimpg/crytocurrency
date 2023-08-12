import 'package:cyptocurrency/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../utiles/colors/app_colors.dart';

class Custom_Card extends StatelessWidget {
  const Custom_Card({
    required this.user,
    required this.id,
    required this.icon,
    super.key});

  final String user;
  final String id;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return   Card(

      color: Color(0xFF192D36),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 14,bottom: 16,),
              child: Icon(icon,color: AppColors.primaryColor,size: 24,)
          ),
          Container(
            height:60,
            child: VerticalDivider(
              color: Color(0xFF2C3F47),  //color of divider
              width: 40, //width space of divider
              thickness: 1, //thickness of divier line
              indent: 10, //Spacing at the top of divider.
              endIndent: 10, //Spacing at the bottom of divider.
            ),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: user, fontsize: 14, fontweight: FontWeight.w400),
              CustomText(text: id, fontsize: 16, fontweight: FontWeight.w600),


            ],
          ),

        ],
      ),
    );
  }
}
