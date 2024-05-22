import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../../models/postModel.dart';
import '../postData.dart';

part 'posts_user_state.dart';

class PostsUserCubit extends Cubit<PostsUserState> {
  PostsUserCubit() : super(PostsUserInitial());

  Future<void> getPostsUser() async {
    emit(PostUserLoading());
    final url = Uri.parse('$api_url_2/posts/get-only-user?userId=${1}');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PostModel> posts = postsFromJson(response.body);
        emit(PostUserLoaded(posts));
      } else {
        emit(PostUserError('Ошибка (getPostsUser): ${response.statusCode}'));
      }
    } catch (e) {
      emit(PostUserError('Ошибка (getPostsUser): $e'));
    }
  }
}
