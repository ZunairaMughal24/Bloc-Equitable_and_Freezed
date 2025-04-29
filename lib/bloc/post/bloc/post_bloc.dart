import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:equitable/model/post_model.dart';
import 'package:equitable/repository/postRepository.dart';
import 'package:equitable/utils/enum.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  List<PostModel> tempPostList = [];
  Postrepository postrepository = Postrepository();
  PostBloc(this.postrepository) : super(PostState()) {
    on<FetchPost>(_fetchPost);
    on<SearchString>(_searchItem);
  }
  void _fetchPost(FetchPost event, Emitter<PostState> emit) async {
    await postrepository.fetchPost().then((value) {
      emit(state.copyWith(
        postStatus: PostStatus.success,
        message: "success",
        postList: value,
      ));
    }).onError((error, stackTrace) {
      log(error.toString());
      log(stackTrace.toString());
      emit(state.copyWith(
        postStatus: PostStatus.failure,
        message: error.toString(),
      ));
    });
  }

  void _searchItem(SearchString event, Emitter<PostState> emit) async {
    log("Event triggered with search string: ${event.searchString}");
    if (event.searchString.isEmpty) {
      log("inside if");
      emit(state.copyWith(tempPostList: [], searchMessage: ""));
    } else {
      log("inside else");
      // tempPostList = state.postList
      //     .where((element) =>
      //         element.id.toString() == event.searchString.toString())
      //     .toList();
      tempPostList = state.postList
          .where((element) => element.email
              .toString()
              .toLowerCase()
              .contains(event.searchString.toLowerCase()))
          .toList();

      log("Filtered Posts: ${tempPostList.length}");
      emit(state.copyWith(tempPostList: tempPostList));
      if (tempPostList.isEmpty) {
        log("No posts found, updating state with message.");
        emit(state.copyWith(
            tempPostList: tempPostList, searchMessage: "no data found"));
        // emit(state.copyWith(
        //   postStatus: PostStatus.failure,
        //   message: "No data found",
        // ));
      } else {
        log("Posts found, updating state.");
        emit(state.copyWith(tempPostList: tempPostList, searchMessage: ""));
      }
    }
  }
}
