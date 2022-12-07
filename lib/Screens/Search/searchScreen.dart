import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  final imagesource = [
    "assets/images/posts/post_10.jpg",
    "assets/images/posts/post_11.jpg",
    "assets/images/posts/post_12.jpg",
    "assets/images/posts/post_9.jpg",
    "assets/images/posts/post_8.jpg",
    "assets/images/posts/post_7.jpg",
    "assets/images/posts/post_6.jpg",
    "assets/images/posts/post_5.jpg",
    "assets/images/posts/post_4.jpg",
    "assets/images/posts/post_3.jpg",
    "assets/images/posts/post_2.jpg",
    "assets/images/posts/post_1.jpg",
    "assets/images/posts/post_10.jpg",
    "assets/images/posts/post_11.jpg",
    "assets/images/posts/post_12.jpg",
    "assets/images/posts/post_9.jpg",
    "assets/images/posts/post_8.jpg",
    "assets/images/posts/post_7.jpg",
    "assets/images/posts/post_6.jpg",
    "assets/images/posts/post_5.jpg",
    "assets/images/posts/post_4.jpg",
    "assets/images/posts/post_3.jpg",
    "assets/images/posts/post_2.jpg",
    "assets/images/posts/post_1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/search.png",
                  height: 18,
                  width: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search \"woodwork\"",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemCount: imagesource.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagesource[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ));
  }
}
