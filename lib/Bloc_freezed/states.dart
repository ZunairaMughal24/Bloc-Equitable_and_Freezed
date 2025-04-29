import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equitable/model/post_model.dart';
import 'package:equitable/utils/enum.dart';

part 'states.freezed.dart';

@freezed
class States with _$States {
  const factory States({
    @Default(PostStatus.loading) PostStatus postStatus,
    @Default([]) List<PostModel> postList,
    @Default([]) List<PostModel> tempPostList,
    @Default('') String message,
    @Default('') String searchMessage,
  }) = _States;
}
