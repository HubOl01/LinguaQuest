import 'package:flutter/material.dart';

import '../../components/Post.dart';

class PublicPosts extends StatelessWidget {
  const PublicPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Post(
            userAvatar: "",
            user: "user1",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
        Post(
            userAvatar: "",
            user: "user2",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
        Post(
            userAvatar: "",
            user: "user3",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
        Post(
            userAvatar: "",
            user: "user1",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
        Post(
            userAvatar: "",
            user: "user2",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
        Post(
            userAvatar: "",
            user: "user1",
            image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
            like: false,
            about: "about"),
            const SizedBox(height: 60,)
      ],
    ));
  }
}
