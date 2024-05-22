import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/Post.dart';
import '../../core/data/cubit/posts_public_cubit.dart';

class PublicPosts extends StatefulWidget {
  const PublicPosts({super.key});

  @override
  State<PublicPosts> createState() => _PublicPostsState();
}

class _PublicPostsState extends State<PublicPosts> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      context.read<PostsPublicCubit>().getPostsPublic();

      super.initState();
    }

    return Scaffold(
        body: FutureBuilder(
            future: context.read<PostsPublicCubit>().getPostsPublic(),
            builder: (context, snapshot) {
              return BlocBuilder<PostsPublicCubit, PostsPublicState>(
                  builder: (context, state) {
                if (state is PostLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is PostLoaded) {
                  if (state.posts.isEmpty) {
                      return const Center(
                          child: Text(
                        "There are no publications, you can publish your entry.",
                        textAlign: TextAlign.center,
                      ));
                    }
                  return ListView.builder(
                    itemCount: state.posts.length,
                    itemBuilder: (context, index) {
                      final post = state.posts[index];
                      return Column(
                        children: [
                          Post(
                              isPostPublic: true,
                              description: post.description,
                              userAvatar: "",
                              user: "Max",
                              like: false,
                              status: 1),
                          SizedBox(
                            height: index == state.posts.length - 1 ? 60 : 0,
                          )
                        ],
                      );
                    },
                  );
                } else if (state is PostError) {
                  return Text(state.message);
                } else {
                  return const SizedBox();
                }
              });
            }));
  }
}
