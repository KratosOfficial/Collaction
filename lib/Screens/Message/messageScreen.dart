import 'package:collocation/Screens/Message/components/MessageScreen.dart';
import 'package:collocation/Screens/Message/components/OfficialScreen.dart';
import 'package:flutter/material.dart';

class messageScreen extends StatefulWidget {
  const messageScreen({Key? key}) : super(key: key);

  @override
  State<messageScreen> createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0)
      return OfficialScreen(
        callback: () {
          selectedIndex = 1;
          setState(() {});
        },
      );
    else
      return MessageScreen(
        callback: () {
          selectedIndex = 0;
          setState(() {});
        },
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Chats",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
    body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Search"),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectedIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? Colors.blueAccent
                          : Color(0xffEDEFFE),
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Center(
                      child: Text(
                        "Messages",
                        style: TextStyle(
                          color: selectedIndex == 1
                              ? Colors.white
                              : Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? Colors.blueAccent
                          : Color(0xffEDEFFE),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Text(

                        "Official",
                        style: TextStyle(
                          color: selectedIndex == 1
                              ? Colors.blueAccent
                              : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    Expanded(child: getFragment()),
      ],
          ),
    ),
    );
  }
}
