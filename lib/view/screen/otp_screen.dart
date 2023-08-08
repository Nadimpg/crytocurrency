import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 80, 15, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 19,
                  width: 130,
                  child: Row(
                    children: [
                      Icon( Icons.arrow_back_outlined,
                        size: 25,
                        color: AppColors.whiteColor,),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'OTP Verification',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 108,
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 108,
                        width: 111,
                        child: Image.asset('assets/images/otpimg.png'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'We have sent the code erification to your',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'email demo123@gmail.com',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                    ],
                  ),
                ),

                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 41,
                      activeFillColor: Color(0xFF0D222B),
                      inactiveFillColor: AppColors.secondaryColor,
                      ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 16,
                ),

                SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpScreen()));
                      },
                      child: Text(
                        'Sumbit Now',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        backgroundColor: AppColors.primaryColor,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t Recive code?',
                        style:
                        TextStyle(color: AppColors.whiteColor, fontSize: 18),
                      ),
                      GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                            'Request again',
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
