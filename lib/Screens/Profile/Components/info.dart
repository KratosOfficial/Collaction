import 'package:flutter/material.dart';

class infoDetails extends StatefulWidget {
  final VoidCallback? callback;

  const infoDetails({Key? key, this.callback}) : super(key: key);

  @override
  State<infoDetails> createState() => _infoDetailsState();
}

class _infoDetailsState extends State<infoDetails> {
  final List infoDetails = [''];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("You Know Who I am"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Edit Bio",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildinfo(content: "Designer & Developer", icon: Icons.work),
          buildinfo(content: "Went to Oxford University",icon: Icons.school),
          buildinfo(content: "Lives in London, United Kingdom", icon: Icons.location_on),
          buildinfo(content: "from London, United Kingdom",icon: Icons.location_city),
          buildinfo(content: "relationship status is single",icon: Icons.favorite),
          buildinfo(content: "joined in 2019",icon: Icons.calendar_today),
          buildinfo(content: "Priscilla",icon: Icons.social_distance),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Edit Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Art"),
              Text("Video Games"),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
  Widget buildinfo ({content, icon}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey,),
          SizedBox(width: 10,),
          Text(content, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),),
        ],
      ),
    );
  }
}
