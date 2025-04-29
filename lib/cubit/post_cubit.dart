import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equitable/bloc/post/bloc/post_bloc.dart';
import 'package:equitable/model/post_model.dart';
import 'package:equitable/repository/postRepository.dart';
import 'package:equitable/ui/post.dart';
import 'package:equitable/utils/enum.dart';

class PostCubit extends Cubit<PostState> {
  List<PostModel> tempPostList = [];
  Postrepository postrepository = Postrepository();
  PostCubit(this.postrepository) : super(const PostState());
  // fetch post from the repository and update the state
  Future<void> fetchPost() async {
    try {
      final post = await postrepository.fetchPost();
      emit(state.copyWith(
        postStatus: PostStatus.success,
        message: "success",
        postList: post,
      ));
    } catch (error) {
      print(error.toString());
      emit(state.copyWith(
          postStatus: PostStatus.failure, message: error.toString()));
    }
  }

  //handle the search string and filter pos accordingly
  void searchItem(String searchString) {
    print("search triggered with query : $searchString");
    if (searchString.isEmpty) {
      emit(state.copyWith(tempPostList: [], searchMessage: ""));
    } else {
      tempPostList = state.postList
          .where((element) => element.id
              .toString()
              .toLowerCase()
              .contains(searchString.toLowerCase()))
          .toList();
      print("Filtered Posts: ${tempPostList.length}");

      if (tempPostList.isEmpty) {
        emit(state.copyWith(
            tempPostList: tempPostList, searchMessage: "no data found"));
      } else {
        emit(state.copyWith(tempPostList: tempPostList, searchMessage: ""));
      }
    }
  }
}
