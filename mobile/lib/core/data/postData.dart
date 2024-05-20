import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/postModel.dart';
import 'package:http/http.dart' as http;


String api_url = dotenv.get('API_URL');
Future<void> sendPostRequest(String title, String description, bool isDraft) async {
    final url = Uri.parse('${api_url}/posts');
    final postData = PostModel(
      title: title.trim(),
      description: description.trim(),
      isDraft: isDraft,
      rejectionReason: '',
      userId: 1,
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(postData.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Успешный запрос (sendPostRequest): ${response.body}');
    } else {
      print('Ошибка (sendPostRequest): ${response.statusCode}');
    }
  }

  Future<void> getMyPosts() async {
    final url = Uri.parse('${api_url}/posts/get-only-user');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Успешный запрос (getMyPosts): ${response.body}');
    } else {
      print('Ошибка (getMyPosts): ${response.statusCode}');
    }
  }

   Future<void> getPostsPublic() async {
    final url = Uri.parse('${api_url}/posts/get-only-publication');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Успешный запрос (getPostsPublic): ${response.body}');
    } else {
      print('Ошибка (getPostsPublic): ${response.statusCode}');
    }
  }