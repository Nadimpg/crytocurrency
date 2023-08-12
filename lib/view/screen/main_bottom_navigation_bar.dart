import 'package:cyptocurrency/utiles/colors/app_colors.dart';
import 'package:cyptocurrency/view/screen/home_screen.dart';
import 'package:cyptocurrency/view/screen/menu_screen.dart';
import 'package:cyptocurrency/view/screen/notification_screen.dart';
import 'package:cyptocurrency/view/screen/pricing_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  final  Pages = [HomeScreen(),PricingScreen(),NotificationScreen(),MenuScreen()];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index){

            setState(() {
              currentIndex=index;
            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.secondaryColor,
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.price_check),label: 'Price'),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
          ],
        ),
        body: Pages[currentIndex],
      ),
    );
  }
}
