import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

@freezed
class Events with _$Events {
  const factory Events.fetchPost() = FetchPost;
  const factory Events.searchString(String searchString) = SearchString;
}
