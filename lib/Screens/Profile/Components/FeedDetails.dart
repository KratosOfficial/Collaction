import 'package:flutter/material.dart';

class FeedDetails extends StatefulWidget {
  final VoidCallback? callback;
  const FeedDetails({Key? key, this.callback}) : super(key: key);

  @override
  State<FeedDetails> createState() => _FeedDetailsState();
}

class _FeedDetailsState extends State<FeedDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/posts/post_5.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
