import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/home_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:styled_divider/styled_divider.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({super.key});

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {

  late PageController pageController;
  int selectedIndex = 1;

  @override
  void initState() {
    pageController = PageController(initialPage: selectedIndex, viewportFraction: 0.8);
    super.initState();

  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF192D36),
          title: Text('Pricing Plan',style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: PageView.builder(
                          itemCount: 3,
                          pageSnapping: true,
                          controller: pageController,
                          itemBuilder: (context, index){
                            var scale = selectedIndex == index ? 1.0 : 0.8; 
                            
                            return TweenAnimationBuilder(
                              builder: (context, value, child) => Transform.scale(
                                scale: value,
                                child: child,
                              ),
                              duration: const Duration(milliseconds: 400),
                              tween: Tween(begin: scale, end: scale),
                              curve: Curves.easeInOut,
                              child: Stack(
                                clipBehavior: Clip.hardEdge,
                                children: [
                                  Card(
                                    color: Color(0xFF192D36),
                                    child: Padding(
                                      padding: const EdgeInsets.all(22.0),
                                      child: Column(
                                        children: [
                                          Text('BAsic',style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('\$ ${'50.00'}',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600)),
                                              Text('/ 1month',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),

                                          StyledDivider(
                                            color: AppColors.whiteColor,
                                            height: 50,

                                            thickness: 2,
                                            lineStyle: DividerLineStyle.dotted,
                                            indent: 20,
                                            endIndent: 20,
                                          ),
                                          SizedBox(height: 30,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 12,
                                                width: 12,
                                                child: Icon(Icons.ramp_right_rounded,size: 10,),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: BoxShape.circle,

                                                ),
                                              ),
                                              SizedBox(width: 26,),
                                              Text('5-7 Signals send daily',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),
                                          SizedBox(height: 26,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 12,
                                                width: 12,
                                                child: Icon(Icons.ramp_right_rounded,size: 10,),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: BoxShape.circle,

                                                ),
                                              ),
                                              SizedBox(width: 26,),
                                              Text('85% Success rate',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),
                                          SizedBox(height: 26,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 12,
                                                width: 12,
                                                child: Icon(Icons.ramp_right_rounded,size: 10,),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: BoxShape.circle,

                                                ),
                                              ),
                                              SizedBox(width: 26,),
                                              Text('Entry take profit & stop',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),
                                          SizedBox(height: 26,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 12,
                                                width: 12,
                                                child: Icon(Icons.ramp_right_rounded,size: 10,),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: BoxShape.circle,

                                                ),
                                              ),
                                              SizedBox(width: 26,),
                                              Text('Amount to risk per trade',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),
                                          SizedBox(height: 26,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 12,
                                                width: 12,
                                                child: Icon(Icons.ramp_right_rounded,size: 10,),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: BoxShape.circle,

                                                ),
                                              ),
                                              SizedBox(width: 26,),
                                              Text('Risk reward ratio',style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                            ],
                                          ),
                                          SizedBox(height: 40,),
                                          SizedBox(
                                            height: 38,
                                            width: 220,
                                            child: ElevatedButton(
                                                onPressed: () {

                                                },
                                                child: Text(
                                                  'Choose plan',
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
                                  Positioned(
                                    top: 10, right: -30,
                                    child: Transform.rotate(
                                      angle: 120,
                                      child: Container(
                                        height: 30, width: 100,
                                        color: Color(0xFF303DB6),
                                        child: Center(child: Text('POPULAR')),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          onPageChanged: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
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
                  SizedBox(height: 65,)



                ],
              ),
            ),
          ),
        ),
    );

  }
}
