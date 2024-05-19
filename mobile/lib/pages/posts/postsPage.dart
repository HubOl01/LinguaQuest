import 'package:LinguaQuest/components/Post.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
          children: [
            Post(userAvatar: "", user: "user1", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
            Post(userAvatar: "", user: "user2", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
            Post(userAvatar: "", user: "user3", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
            Post(userAvatar: "", user: "user1", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
            Post(userAvatar: "", user: "user2", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
            Post(userAvatar: "", user: "user1", image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg', like: false, about: "about"),
          ],
        ),
    );
  }
}