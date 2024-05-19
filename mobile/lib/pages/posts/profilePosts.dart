import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../components/Post.dart';

class ProfilePosts extends StatefulWidget {
  const ProfilePosts({super.key});

  @override
  State<ProfilePosts> createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> {
  bool _showFab = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              setState(() {
                if (direction == ScrollDirection.reverse) {
                  _showFab = false;
                } else if (direction == ScrollDirection.forward) {
                  _showFab = true;
                }
              });
              return true;
            },
            child: ListView(
              children: [
                Post(
                    userAvatar: "",
                    user: "user1",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                Post(
                    userAvatar: "",
                    user: "user2",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                Post(
                    userAvatar: "",
                    user: "user3",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                Post(
                    userAvatar: "",
                    user: "user1",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                Post(
                    userAvatar: "",
                    user: "user2",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                Post(
                    userAvatar: "",
                    user: "user1",
                    image:
                        'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                    like: false,
                    about: "about"),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          Positioned(
              right: 15,
              bottom: 80,
              child: AnimatedSlide(
                duration: Duration(milliseconds: 350),
                offset: _showFab ? Offset.zero : Offset(0, 2),
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 350),
                  opacity: _showFab ? 1 : 0,
                  child: FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text("Добавить пост")),
                ),
              ))
        ],
      ),
      // floatingActionButton:
    );
  }
}
