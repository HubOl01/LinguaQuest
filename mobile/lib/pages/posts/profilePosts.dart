import 'package:LinguaQuest/pages/posts/EditPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

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
                  status: 1,
                  userAvatar: "",
                  user: "user1",
                  description:
                      """Sure! Here's an interesting post on the topic of "The Benefits of Reading Fiction":
The Unexpected Benefits of Reading Fiction
In a world where we're constantly bombarded with information, the idea of diving into a fictional world might seem like a mere escape. However, reading fiction offers much more than a temporary respite from reality. Here are some unexpected benefits that might just make you want to pick up that novel on your nightstand.
1. Empathy Booster
Reading fiction, especially character-driven stories, allows us to step into someone else's shoes. We experience their joys, sorrows, and challenges, which can enhance our ability to empathize with others in real life. Studies have shown that people who read literary fiction have a better understanding of human emotions and social cues.
2. Cognitive Flexibility
Engaging with complex narratives and diverse characters can improve our cognitive flexibility. This means we're better at thinking outside the box and adapting to new situations. It's like a mental workout that strengthens our creative and problem-solving skills.
3. Stress Relief
Getting lost in a good book can be incredibly relaxing. Just six minutes of reading can reduce stress by up to 68%, according to research. It's an excellent way to unwind after a long day and escape the pressures of daily life.
4. Enhanced Vocabulary and Writing Skills
Reading regularly exposes us to new words and different writing styles. This can naturally improve our vocabulary and writing skills. Whether it's a turn of phrase that sticks with you or an eloquent description, these elements can inspire and improve your own communication abilities.
5. Lifelong Learning
Fiction often weaves in real-world knowledge, historical contexts, and scientific principles. By reading a wide variety of genres, we can learn about different cultures, historical events, and even scientific concepts, all while enjoying a captivating story.
6. Mental Stimulation
Like any other muscle in our bodies, the brain benefits from a good workout. Reading keeps our minds active and engaged, which can help slow cognitive decline as we age. It's a pleasurable way to maintain mental sharpness.

So, next time you consider what to do with your free time, remember that picking up a novel is not just a form of entertainment; it's an investment in your emotional and intellectual well-being. Happy reading!

Feel free to share this on social media or use it as inspiration for your own post!""",
                  like: false,
                ),
                Post(
                  userAvatar: "",
                  user: "user2",
                  image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                  like: false,
                  status: 1,
                ),
                Post(
                  userAvatar: "",
                  user: "user3",
                  image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                  like: false,
                  status: 3,
                ),
                Post(
                  userAvatar: "",
                  user: "user1",
                  image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                  like: false,
                  status: 3,
                ),
                Post(
                  userAvatar: "",
                  user: "user2",
                  image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                  like: false,
                  status: 3,
                ),
                Post(
                  userAvatar: "",
                  user: "user1",
                  image: 'https://cdn1.ozone.ru/s3/multimedia-0/6108964908.jpg',
                  like: false,
                  status: 3,
                ),
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
                      onPressed: () {
                        Get.to(EditorPost());
                      },
                      label: Text("Добавить пост")),
                ),
              ))
        ],
      ),
      // floatingActionButton:
    );
  }
}
