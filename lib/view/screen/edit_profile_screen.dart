import 'package:cyptocurrency/view/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../utiles/colors/app_colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF192D36),
        title: Text('Edit Profile',style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        ),
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>UserProfileScreen()));
        }, icon: Icon(Icons.arrow_back_outlined),color: AppColors.whiteColor,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14,right: 14,top: 24),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 77,
                width: 77,


                child: Icon(Icons.camera_alt,size: 38,color: Color(0xFF7A858A),),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:  Color(0xFF192D36),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
