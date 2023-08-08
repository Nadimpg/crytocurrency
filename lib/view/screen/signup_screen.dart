import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/signin_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: AppColors.secondaryColor,
      body:  SingleChildScrollView(
        child: SizedBox(

          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 80, 15, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Start your journey',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                 Text(
                  'Create your account , please enter',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),

                 Text(
                  'your details',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),


                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Enter username',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'Username',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Email address',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'Email',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Select country',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'Country',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Phone number',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'Number',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'Password',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            letterSpacing: 1,color:Color(0xFF44555B)),
                        labelText: 'Password',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: this.isCheck,
                      activeColor: AppColors.primaryColor,
                      side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide(width: 1.0, color: Colors.red),),
                      onChanged: ( value) {
                        setState(() {
                          this.isCheck = value!;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('I agree with',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),),
                            SizedBox(width: 2,),
                            GestureDetector(onTap: (){}, child: Text('terms of service',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w400),)),
                            SizedBox(width: 2,),
                            Text('and',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('our',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400)),
                            SizedBox(width: 2,),
                            GestureDetector(onTap: (){}, child: Text('privacy policy',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w400))),
                          ],
                        )
                      ],
                    )

                  ],
                ),
                const  SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        backgroundColor: AppColors.primaryColor,
                      )),
                ),
              const  SizedBox(
                  height: 17,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already Have An Account? ',
                        style:
                        TextStyle(color: AppColors.whiteColor, fontSize: 18),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
                          },
                          child:const Text(
                            'Sign In now',
                            style: TextStyle(
                                color: AppColors.primaryColor, fontSize: 15),
                          )),
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
