import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final pageController = PageController();
  int currenIndex=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 270, left: 20, right: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: PageView.builder(
                          itemCount: 3,
                          pageSnapping: true,
                          controller: pageController,
                          itemBuilder: (context, index)  => Column(
                            children: [
                              Image.asset("assets/images/image_2023_08_05T12_48_12_680Z.png", height: 150, width: 180),
                              const SizedBox(height: 51),
                              const Text(
                                "Discover Your Dream Here",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Hidden in the middle of text. All the Lorem Ipsum generators on the Internet",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          )
                      )),
                  const SizedBox(height: 40),
                  SmoothPageIndicator(
                    controller: pageController,
                    count:  3,
                    axisDirection: Axis.horizontal,
                    effect:  const SlideEffect(
                        spacing:  8.0,
                        radius:  5,
                        dotWidth: 14,
                        dotHeight:  9,
                        paintStyle:  PaintingStyle.stroke,
                        strokeWidth:  1.5,
                        activeDotColor:  AppColors.primaryColor
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(

                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
                            }, child: Text("Get Started"))),
                      ),
                    ],
                  ),
                  TextButton(onPressed: (){
                    setState(() {
                      currenIndex==pageController;
                    });
                  }, child: Text("Skip"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}