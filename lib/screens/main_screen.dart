import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/screens/home_screen.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<MainScreen> {
  List screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    // TripsScreen(),ProfileScreen(),SettingsScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        child: Neumorphic(
          style: NeumStyle(),
          child: BottomNavigationBar(
           
            backgroundColor: white,
            selectedLabelStyle: TextStyle(color: mc),
            unselectedLabelStyle: TextStyle(color: black),
            selectedItemColor: mc,
            unselectedItemColor: black,
            iconSize: 30,
            elevation: 10,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Add Products",
                activeIcon: Icon(Icons.shopping_cart),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_outlined),
                label: "Rewards",
                activeIcon: Icon(
                  Icons.favorite,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profile",
                activeIcon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
