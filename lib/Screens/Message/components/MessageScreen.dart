import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final VoidCallback? callback;

  const MessageScreen({Key? key, this.callback}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
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
                    title: Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Hello, how are you?",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    trailing: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
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
