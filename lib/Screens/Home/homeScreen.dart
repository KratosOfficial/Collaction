import 'package:collocation/Data/postDetails.dart';
import 'package:collocation/Screens/Home/Components/buildPost.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final Stories = [
    "assets/images/profile/profile_1.jpg",
    "assets/images/profile/profile_2.jpeg",
    "assets/images/profile/profile_3.jpeg",
    "assets/images/profile/profile_4.png",
    "assets/images/profile/profile_5.png",
    "assets/images/profile/profile_6.png",
  ];
  final StoriesName = [
    "Wendy",
    "Claire",
    "Esther",
    "Darlene",
    "Bessian",
    "Claire",
    "Esther",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "C",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "o",
                style: TextStyle(
                    color: Color(0xff693e81),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            TextSpan(
              text: "llacti",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextSpan(
                text: "o",
                style: TextStyle(
                    color: Color(0xfffde384),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "n",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ]),
        ),
        actions: [
          Image.asset(
            "assets/icons/notification.png",
            height: 30,
            width: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: Stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int Index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff693e81),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(Stories[Index]),
                              ),
                            ),
                          ),
                          Text(
                            StoriesName[Index],
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: ListView.builder(
              itemCount: PostDetail.length,
                itemBuilder: (BuildContext Context, int index) {
              return buildPost(index: index,);
            }))
          ],
        ),
      ),
    );
  }

}
