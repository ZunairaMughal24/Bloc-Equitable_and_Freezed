part of 'post_bloc.dart';

class PostState extends Equatable {
  final PostStatus postStatus;
  final List<PostModel> postList;
  final List<PostModel> tempPostList;
  final String message;
  final String searchMessage;

  const PostState(
      {this.postStatus = PostStatus.loading,
      this.postList = const <PostModel>[],
      this.message = "",
      this.tempPostList = const <PostModel>[],
      this.searchMessage = ""});

  PostState copyWith({
    PostStatus? postStatus,
    List<PostModel>? postList,
    List<PostModel>? tempPostList,
    String? message,
    String? searchMessage,
  }) {
    return PostState(
      postStatus: postStatus ?? this.postStatus,
      postList: postList ?? this.postList,
      message: message ?? this.message,
      tempPostList: tempPostList ?? this.tempPostList,
      searchMessage: searchMessage ?? this.searchMessage,
    );
  }

  @override
  List<Object> get props =>
      [postList, postStatus, message, tempPostList, searchMessage];
}
