part of 'posts_user_cubit.dart';

@immutable
abstract class PostsUserState {}

final class PostsUserInitial extends PostsUserState {}

class PostUserLoading extends PostsUserState {}

class PostUserLoaded extends PostsUserState {
  final List<PostModel> posts;

  PostUserLoaded(this.posts);
}

class PostUserError extends PostsUserState {
  final String message;

  PostUserError(this.message);
}
