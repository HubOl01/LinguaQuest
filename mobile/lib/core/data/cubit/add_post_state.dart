part of 'add_post_cubit.dart';

abstract class AddPostState extends Equatable {
  const AddPostState();

  @override
  List<Object> get props => [];
}

final class AddPostInitial extends AddPostState {}

class AddPostLoading extends AddPostState {}

class AddPostSuccess extends AddPostState {
  final String response;

  const AddPostSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class AddPostError extends AddPostState {
  final String message;

  const AddPostError(this.message);

  @override
  List<Object> get props => [message];
}

// abstract class PostState extends Equatable {
//   const PostState();

//   @override
//   List<Object> get props => [];
// }

// class PostInitial extends PostState {}

// class PostLoading extends PostState {}

// class PostSuccess extends PostState {
//   final String response;

//   const PostSuccess(this.response);

//   @override
//   List<Object> get props => [response];
// }

// class PostError extends PostState {
//   final String message;

//   const PostError(this.message);

//   @override
//   List<Object> get props => [message];
// }