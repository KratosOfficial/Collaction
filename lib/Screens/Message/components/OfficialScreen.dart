import 'package:flutter/material.dart';

class OfficialScreen extends StatefulWidget {
  final VoidCallback? callback;
  const OfficialScreen({Key? key, this.callback}) : super(key: key);

  @override
  State<OfficialScreen> createState() => _OfficialScreenState();
}

class _OfficialScreenState extends State<OfficialScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: 5 ,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/profile/profile_1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Kratos Official",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.verified, color: Colors.blue, size: 15),
                      ],
                    ),
                    subtitle: Text(
                      "Hello, how are you?",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                ],
              );
            }));
  }
}

