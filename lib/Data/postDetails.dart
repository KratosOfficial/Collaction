import 'package:flutter/material.dart';

class postDetails {
  final int id;
  final String name, location, image, likes, comments, profileImage;

  postDetails(
      {required this.id,
      required this.image,
      required this.name,
      required this.location,
        required this.profileImage,
      required this.likes,
      required this.comments});
}

// For demo list of service
List<postDetails> PostDetail = [
  postDetails(
    id: 1,
    name: "John Doe",
    location: "New York",
    image: "assets/images/posts/post_3.jpg",
    profileImage: "assets/images/profile/profile_5.png",
    likes: "1.2k",
    comments: "200",
  ),
  postDetails(
    id: 2,
    name: "Nguyen Shane",
    location: "Poland",
    image: "assets/images/posts/post_6.jpg",
    profileImage: "assets/images/profile/profile_6.png",
    likes: "7.2k",
    comments: "142",
  ),
  postDetails(
    id: 3,
    name: "Alex Smith",
    location: "Australia",
    image: "assets/images/posts/post_12.jpg",
    profileImage: "assets/images/profile/profile_1.jpg",
    likes: "1.0k",
    comments: "20",
  ),
  postDetails(
    id: 4,
    name: "Kratos Official",
    location: "India",
    image: "assets/images/posts/post_10.jpg",
    profileImage: "assets/images/profile/profile_2.jpeg",
    likes: "1.0k",
    comments: "20",
  ),
  postDetails(
    id: 5,
    name: "Miles Esther",
    location: "Finland",
    image: "assets/images/posts/post_4.jpg",
    profileImage: "assets/images/profile/profile_4.png",
    likes: "1.0k",
    comments: "20",
  ),
  postDetails(
    id: 6,
    name: "Cooper Kristin",
    location: "Iceland",
    image: "assets/images/posts/post_5.jpg",
    profileImage: "assets/images/profile/profile_3.jpeg",
    likes: "1.0k",
    comments: "20",
  ),

];
