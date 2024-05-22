import 'package:LinguaQuest/pages/posts/profilePosts.dart';
import 'package:LinguaQuest/pages/posts/publicPosts.dart';
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
          body: TabBarView(children: [PublicPosts(), ProfilePosts()]),
          appBar: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    width: 2.0, color: Theme.of(context).colorScheme.primary),
                insets: EdgeInsets.symmetric(horizontal: 30.0),
              ),
              labelColor: Theme.of(context).colorScheme.primary,
              tabs: [
                SizedBox(
                  height: 30,
                  child: Tab(
                    text: "All Posts",
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Tab(
                    text: "My Posts",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
