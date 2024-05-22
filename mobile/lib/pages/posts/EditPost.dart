import 'dart:convert';

import 'package:LinguaQuest/core/data/cubit/add_post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../core/models/postModel.dart';

class EditorPost extends StatefulWidget {
  PostModel? post;
  EditorPost({super.key, this.post});

  @override
  State<EditorPost> createState() => _EditorPostState();
}

class _EditorPostState extends State<EditorPost> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.post?.title ?? '');
    _descriptionController =
        TextEditingController(text: widget.post?.description ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocConsumer<AddPostCubit, AddPostState>(
        listener: (context, state) {
          if (state is AddPostSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Post created successfully!')),
            );
            Get.back();
          } else if (state is AddPostError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is AddPostLoading) {
            return CircularProgressIndicator();
          }
          return FloatingActionButton(
            onPressed: () {
              _savePost();
            },
            child: const Icon(Icons.check),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }

  void _savePost() {
    final newPost = PostModel(
      title: _titleController.text,
      description: _descriptionController.text,
      isDraft: false,
      rejectionReason: '',
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      userId: 1, // Assuming user ID is 1
    );

    // Convert post to JSON format
    final jsonPost = jsonEncode(newPost.toJson());

    // Save the post to database or send it to server
    print(jsonPost);
    context.read<AddPostCubit>().sendPostRequest(
        _titleController.text, _descriptionController.text, false);
  }
}
