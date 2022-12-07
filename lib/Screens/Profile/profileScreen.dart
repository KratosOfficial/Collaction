import 'package:collocation/Screens/Profile/Components/FeedDetails.dart';
import 'package:collocation/Screens/Profile/Components/info.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  int selectedIndex = 0;

  Widget getFragment(){
    if(selectedIndex == 0){
      return FeedDetails(
        callback: () {
          setState(() {
            selectedIndex = 1;
          });
        },
      );
  }else{
    return infoDetails(
      callback: () {
        setState(() {
          selectedIndex = 0;
        });
      },
    );
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 290,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset(
                    "assets/images/posts/post_10.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 0,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/profile/profile_1.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                    top: 60,
                    left: 15,
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/icons/Settings.png",
                              height: 25,
                              width: 25,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Priscilla    |    Designer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "24.3k",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "1.7k",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Priscilla    |    Designer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          "I Believe that to be Distinctive, Inspiration &\nInnovation",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    TextSpan(
                      text: " @Behance",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ])),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/edit.png",
                              height: 25,
                              width: 25,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/dm.png",
                              height: 25,
                              width: 25,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/menu.png",
                              height: 25,
                              width: 25,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Text(
                          "Feed",
                          style: TextStyle(
                              fontSize: 25,
                              color:selectedIndex == 1 ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Text(
                          "Info",
                          style: TextStyle(
                              fontSize: 25,
                              color: selectedIndex == 0 ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  getFragment(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
