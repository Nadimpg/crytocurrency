import 'package:cyptocurrency/view/screen/edit_profile_screen.dart';
import 'package:cyptocurrency/view/screen/menu_screen.dart';
import 'package:cyptocurrency/view/widget/custom_card.dart';
import 'package:cyptocurrency/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../utiles/colors/app_colors.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF192D36),
        title: Text('User Profile',style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        ),
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>MenuScreen()));
        }, icon: Icon(Icons.arrow_back_outlined),color: AppColors.whiteColor,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14,right: 14,top: 12,bottom: 0),
              child: SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,

                child: Card(

                  color: Color(0xFF192D36),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 14,bottom: 16,),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/bamsi.png')
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Wade Warren', fontsize: 16, fontweight: FontWeight.w600),
                          CustomText(text: 'Bangladesh', fontsize: 14, fontweight: FontWeight.w400)

                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfileScreen()));
                          },
                          child: Container(
                            height: 20,
                            width: 67,
                            color: AppColors.secondaryColor,
                            child: Center(child: CustomText(text: 'Edit profile', fontsize: 12, fontweight: FontWeight.w600),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14,right: 14,top: 20,),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Custom_Card(icon:Icons.person , user: 'Username', id: 'wsth45789'),
                    Custom_Card(icon:Icons.email , user: 'Email', id: 'demo123@gmail.com'),
                    Custom_Card(icon:Icons.phone ,user: 'Phone Number', id: '000 9999 8888'),
                    Custom_Card(icon:Icons.countertops ,user: 'Country', id: 'wsth45789'),
                    Custom_Card(icon:Icons.location_city ,user: 'Address', id: '6391 Elgin St. Celina, Delaware 10299'),
                    Custom_Card(icon: Icons.real_estate_agent,user: 'State', id: 'Dhaka'),
                    Custom_Card(icon:Icons.location_city ,user: 'City', id: 'Dhaka'),
                    Custom_Card(icon:Icons.qr_code ,user: 'Zip Code', id: '1548950'),
                    Custom_Card(icon:Icons.telegram ,user: 'Telegram Username', id: 'demo123456'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
