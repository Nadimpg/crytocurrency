import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool isCheck=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 80, 15, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Let’s sign you in.',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Welcome back, please enter',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  'your details',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Enter New Password',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color:Color(0xFF44555B)),
                        labelText: 'New Password',
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
                const SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    maxLines: 1,
                    keyboardType: TextInputType.text,

                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Enter Confirm Password',
                        suffixIcon: Icon(Icons.remove_red_eye),
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
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 13,
                              width: 25,
                              child: Switch(
                                value: isCheck,
                                activeColor: Colors.green,
                                inactiveTrackColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {
                                    isCheck = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              height: 21,
                              width: 83,
                              child: Text(
                                'Remember me',
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {

                          },
                          child: Text('Forgot password?',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Reset Password',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        backgroundColor: AppColors.primaryColor,
                      )),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
