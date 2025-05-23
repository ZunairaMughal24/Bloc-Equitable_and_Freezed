part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class FetchPost extends PostEvent {}

class SearchString extends PostEvent {
  final String searchString;
  SearchString(this.searchString);
}
