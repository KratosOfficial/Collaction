import 'package:collocation/Data/postDetails.dart';
import 'package:flutter/material.dart';

class buildPost extends StatefulWidget {
  const buildPost({Key, key, required this.index}) : super(key: key);
  final int index;

  @override
  State<buildPost> createState() => _buildPostState();
}

class _buildPostState extends State<buildPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff693e81),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(PostDetail[widget.index].profileImage,
                          fit: BoxFit.cover)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      PostDetail[widget.index].name,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      PostDetail[widget.index].location,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                  },
                  child: Image.asset(
                    "assets/icons/menu.png",
                    height: 25,
                    color: Colors.black,
                    width: 25,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  PostDetail[widget.index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Image.asset(
                "assets/icons/like.png",
                height: 25,
                width: 25,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                PostDetail[widget.index].likes,
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50)),
                      ),
                      context: context,
                      builder: (context) {
                        return buildcomment();
                      });
                },
                child: Container(
                    child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/comment.png",
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      PostDetail[widget.index].comments,
                    ),
                  ],
                )),
              ),
              Spacer(),
              Image.asset(
                "assets/icons/share.png",
                height: 25,
                width: 25,
                color: Colors.black,
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget buildcomment() {
    return Container(
      color: Colors.grey[200],
      height: MediaQuery.of(context).size.height - 350,
      width: 150,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff693e81),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              PostDetail[widget.index].profileImage,
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          PostDetail[widget.index].name,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2 Hours",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Text(
                            "Nyc Work You can do it, and if possible you can check my profile and give me some feedbacks",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Write a comment",
              hintStyle: TextStyle(fontSize: 12, color: Colors.black),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20),
            ),
          ),
        ],
      ),
    );
  }
}
