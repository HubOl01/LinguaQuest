import 'package:LinguaQuest/components/Post.dart';
import 'package:LinguaQuest/pages/posts/profilePosts.dart';
import 'package:LinguaQuest/pages/posts/publicPosts.dart';
import 'package:LinguaQuest/pages/profile/profilePage.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: TabBarView(
            children: [PublicPosts(), ProfilePosts()]),
          appBar: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.deepPurple.shade900),
              insets: EdgeInsets.symmetric(horizontal: 30.0), 
            ),
            labelColor: Colors.deepPurple.shade900,
            tabs: [
              Tab(
                text: "PublicPosts",
                
              ),
              Tab(
                text: "ProfilePage",
              ),
            ]),
          
        ),
      ),
    );
  }
}
