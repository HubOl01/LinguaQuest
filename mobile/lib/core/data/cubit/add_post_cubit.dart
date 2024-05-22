import 'package:LinguaQuest/core/data/postData.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../models/postModel.dart';
part 'add_post_state.dart';

class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit() : super(AddPostInitial());

  Future<void> sendPostRequest(
      String title, String description, bool isDraft) async {
    emit(AddPostLoading());
    final url = Uri.parse('$api_url_2/posts');
    final postData = PostModel(
      title: title.trim(),
      description: description.trim(),
      isDraft: false,
      rejectionReason: '',
      userId: 1,
    );

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(postData.toJson()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(AddPostSuccess(response.body));
        print("AddPostSuccess: ${response.body}");
      } else {
        emit(AddPostError('Error: ${response.statusCode}'));
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      emit(AddPostError('Error: $e'));
      print("Error: $e");
    }
  }
}
