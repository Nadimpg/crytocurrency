import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/pricing_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.secondaryColor,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      color: Color(0xFF192D36),
                      elevation: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 38,
                              width: 38,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF12262F),
                                  image: DecorationImage(
                                      scale: 4,
                                      image: AssetImage(
                                        'assets/images/money.png',
                                      ))),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$ ${'7,5487'}',
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Total balance',
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 126,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SizedBox(
                              width: 135,
                              child: Card(
                                color: const Color(0xFF192D36),
                                elevation: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 37,
                                        width: 37,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF12262F),
                                            image: DecorationImage(
                                                scale: 4,
                                                image: AssetImage(
                                                  'assets/images/money_1.png',
                                                ))),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '470',
                                            style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Total transaction',
                                            style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:const Text(
                    'Latest Signal',
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 350,
                            width: double.infinity,
                            color: Color(0xFF10232B),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Column(
                                    children: [
                                      Text(
                                        'Signal Name Here',
                                        style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        'Jun02,-2022 - 9:28 AM',
                                        style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),

                                    SizedBox(height: 20,),
                                  Divider(
                                    color: Color(0xFF293B44),
                                  ),
                                  SizedBox(height: 20,),

                                  Column(
                                    children: [
                                      Text(
                                          'It is a long established fact that a readebedistractbreadable content of a page when looking at its layout. Thpoiusiorem Ipsum is that it has a more-or-less a handful of mosentence structures, to generate Lorem Ipsum which looks reasonThe generated Lorem Ipsum is therefore always free Finibus ',
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(height: 10,),
                                      Text(
                                          'Bonorum et Malor" (The Extremes of Good and EvilCicero) written.This book is a treatise on the theory of ethics very popular during the',
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              wordSpacing: 2,

                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      children: List.generate(
                          10,
                          (index) => SizedBox(
                                height: 80,
                                width: double.infinity,
                                child: Card(
                                  elevation: 1,
                                  color: Color(0xFF192D36),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Center(
                                            child: Text(
                                              '01',
                                              style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            shape: BoxShape.rectangle,
                                            color: Color(0xFF30424A),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 11,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Signal Name Here',
                                            style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.lock_clock,
                                                color: Color(0xFFD1D5D7),
                                                size: 14,
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                '2021-12-01 09:28 AM',
                                                style: TextStyle(
                                                    color: Color(0xFFD1D5D7),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 29,
                                          width: 29,
                                          child: Center(
                                            child: Container(
                                              child: Center(
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: AppColors.whiteColor,
                                                  size: 14,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.secondaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SizedBox(
                      height: 123,
                      width: double.infinity,
                      child: Card(
                        color: Color(0xFF192D36),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Referral Link',
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              DottedBorder(
                                color: AppColors.whiteColor,
                                borderType: BorderType.RRect,
                                radius: Radius.circular(4),
                                padding: EdgeInsets.all(10),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  child: Container(
                                    height: 20,
                                    width: 220,
                                    child: Text(
                                      'https://192.168.30.115:81/localcoins-9/',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Copy Link',
                                      style:
                                          TextStyle(color: AppColors.whiteColor),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      backgroundColor: AppColors.primaryColor,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )),
                )
              ]),
        ),
      ),
    );
  }
}
