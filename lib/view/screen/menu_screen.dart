import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF192D36),
        title: Text('User Menu',style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              height: 360,
              width: MediaQuery.of(context).size.width,
              child:Card(
                color:  Color(0xFF192D36),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>UserProfileScreen()));
                        },
                        child: SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                child: Icon(Icons.person,color: AppColors.primaryColor,),
                                decoration: BoxDecoration(),
                              ),
                              SizedBox(width: 16,),
                              Text('User Profile',style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFF293B44),
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.lock,color: AppColors.primaryColor,),
                              decoration: BoxDecoration(),
                            ),
                            SizedBox(width: 16,),
                            Text('Change Password',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF293B44),
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.factory_outlined,color: AppColors.primaryColor,),
                              decoration: BoxDecoration(),
                            ),
                            SizedBox(width: 16,),
                            Text('Two Factor',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF293B44),

                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.transfer_within_a_station,color: AppColors.primaryColor,),
                              decoration: BoxDecoration(),
                            ),
                            SizedBox(width: 16,),
                            Text('Transaction History',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF293B44),
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.departure_board_sharp,color: AppColors.primaryColor,),
                              decoration: BoxDecoration(),
                            ),
                            SizedBox(width: 16,),
                            Text('Deposit  History',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF293B44),
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.deck,color: AppColors.primaryColor,),
                              decoration: BoxDecoration(),
                            ),
                            SizedBox(width: 16,),
                            Text('Deposit  Now',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(padding:EdgeInsets.only(left: 14,right: 14),
          child: SizedBox(
            height: 64,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color:  Color(0xFF192D36),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.privacy_tip,color: AppColors.primaryColor,),
                      decoration: BoxDecoration(),
                    ),
                    SizedBox(width: 16,),
                    Text('Privacy Policy',style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600))
                  ],
                ),
              ) ,
            ),
          ),
          ),
          SizedBox(height: 12,),

          Padding(padding: EdgeInsets.only(left: 14,right: 14),
            child: SizedBox(
              height: 64,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color:  Color(0xFF192D36),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Icon(Icons.signpost_outlined,color: AppColors.primaryColor,),
                        decoration: BoxDecoration(),
                      ),
                      SizedBox(width: 16,),
                      Text('Sign Out',style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600))
                    ],
                  ),
                ) ,
              ),
            ),
          )

        ],
      ),
    );
  }
}