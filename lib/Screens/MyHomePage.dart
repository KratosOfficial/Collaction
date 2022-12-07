import 'package:collocation/Screens/Home/homeScreen.dart';
import 'package:collocation/Screens/Message/messageScreen.dart';
import 'package:collocation/Screens/Profile/profileScreen.dart';
import 'package:collocation/Screens/Search/searchScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return const homeScreen();
    } else if (selectedIndex == 1) {
      return const searchScreen();
    }else if (selectedIndex == 2) {
      return const messageScreen();
    }else if (selectedIndex == 3) {
      return const profileScreen();
    }
    return const homeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getFragment(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7c37a5),
        onPressed: () {},
        child: Image.asset(
          "assets/icons/camera.png",
          color: Colors.white,
          height: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                width: 30,
              ),
              label: "",
              activeIcon: Image.asset(
                "assets/icons/home.png",
                width: 30,
                color: Colors.blueAccent,
              )),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/search.png",
              width: 30,
            ),
            label: "",
            activeIcon: Image.asset(
              "assets/icons/search.png",
              width: 30,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/message.png",
              width: 30,
            ),
            label: "",
            activeIcon: Image.asset(
              "assets/icons/message.png",
              width: 30,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/profile.png",
              width: 30,
            ),
            label: "",
            activeIcon: Image.asset(
              "assets/icons/profile.png",
              width: 30,
              color: Colors.blueAccent,
            ),
          ),
        ],
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
