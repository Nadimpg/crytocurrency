import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
                            letterSpacing: 1, color: AppColors.whiteColor),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
