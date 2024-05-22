import 'dart:convert';

import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.check),),
      appBar: AppBar(
        title: Text('Add Post'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              _savePost();
            },
          ),
        ],
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
  }
}