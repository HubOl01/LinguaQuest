import 'package:LinguaQuest/core/models/postModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../postData.dart';

part 'posts_public_state.dart';

class PostsPublicCubit extends Cubit<PostsPublicState> {
  PostsPublicCubit() : super(PostsPublicInitial());

  Future<void> getPostsPublic() async {
    emit(PostLoading());
    final url = Uri.parse('$api_url_2/posts/get-only-publication');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PostModel> posts = postsFromJson(response.body);
        emit(PostLoaded(posts));
      } else {
        emit(PostError('Ошибка (getPostsPublic): ${response.statusCode}'));
      }
    } catch (e) {
      emit(PostError('Ошибка (getPostsPublic): $e'));
    }
  }
}
