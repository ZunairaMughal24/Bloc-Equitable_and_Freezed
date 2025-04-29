// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$States {
  PostStatus get postStatus => throw _privateConstructorUsedError;
  List<PostModel> get postList => throw _privateConstructorUsedError;
  List<PostModel> get tempPostList => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get searchMessage => throw _privateConstructorUsedError;

  /// Create a copy of States
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatesCopyWith<States> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesCopyWith<$Res> {
  factory $StatesCopyWith(States value, $Res Function(States) then) =
      _$StatesCopyWithImpl<$Res, States>;
  @useResult
  $Res call(
      {PostStatus postStatus,
      List<PostModel> postList,
      List<PostModel> tempPostList,
      String message,
      String searchMessage});
}

/// @nodoc
class _$StatesCopyWithImpl<$Res, $Val extends States>
    implements $StatesCopyWith<$Res> {
  _$StatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of States
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postStatus = null,
    Object? postList = null,
    Object? tempPostList = null,
    Object? message = null,
    Object? searchMessage = null,
  }) {
    return _then(_value.copyWith(
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      tempPostList: null == tempPostList
          ? _value.tempPostList
          : tempPostList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      searchMessage: null == searchMessage
          ? _value.searchMessage
          : searchMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatesImplCopyWith<$Res> implements $StatesCopyWith<$Res> {
  factory _$$StatesImplCopyWith(
          _$StatesImpl value, $Res Function(_$StatesImpl) then) =
      __$$StatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostStatus postStatus,
      List<PostModel> postList,
      List<PostModel> tempPostList,
      String message,
      String searchMessage});
}

/// @nodoc
class __$$StatesImplCopyWithImpl<$Res>
    extends _$StatesCopyWithImpl<$Res, _$StatesImpl>
    implements _$$StatesImplCopyWith<$Res> {
  __$$StatesImplCopyWithImpl(
      _$StatesImpl _value, $Res Function(_$StatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of States
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postStatus = null,
    Object? postList = null,
    Object? tempPostList = null,
    Object? message = null,
    Object? searchMessage = null,
  }) {
    return _then(_$StatesImpl(
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      tempPostList: null == tempPostList
          ? _value._tempPostList
          : tempPostList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      searchMessage: null == searchMessage
          ? _value.searchMessage
          : searchMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatesImpl implements _States {
  const _$StatesImpl(
      {this.postStatus = PostStatus.loading,
      final List<PostModel> postList = const [],
      final List<PostModel> tempPostList = const [],
      this.message = '',
      this.searchMessage = ''})
      : _postList = postList,
        _tempPostList = tempPostList;

  @override
  @JsonKey()
  final PostStatus postStatus;
  final List<PostModel> _postList;
  @override
  @JsonKey()
  List<PostModel> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  final List<PostModel> _tempPostList;
  @override
  @JsonKey()
  List<PostModel> get tempPostList {
    if (_tempPostList is EqualUnmodifiableListView) return _tempPostList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempPostList);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String searchMessage;

  @override
  String toString() {
    return 'States(postStatus: $postStatus, postList: $postList, tempPostList: $tempPostList, message: $message, searchMessage: $searchMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatesImpl &&
            (identical(other.postStatus, postStatus) ||
                other.postStatus == postStatus) &&
            const DeepCollectionEquality().equals(other._postList, _postList) &&
            const DeepCollectionEquality()
                .equals(other._tempPostList, _tempPostList) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.searchMessage, searchMessage) ||
                other.searchMessage == searchMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postStatus,
      const DeepCollectionEquality().hash(_postList),
      const DeepCollectionEquality().hash(_tempPostList),
      message,
      searchMessage);

  /// Create a copy of States
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      __$$StatesImplCopyWithImpl<_$StatesImpl>(this, _$identity);
}

abstract class _States implements States {
  const factory _States(
      {final PostStatus postStatus,
      final List<PostModel> postList,
      final List<PostModel> tempPostList,
      final String message,
      final String searchMessage}) = _$StatesImpl;

  @override
  PostStatus get postStatus;
  @override
  List<PostModel> get postList;
  @override
  List<PostModel> get tempPostList;
  @override
  String get message;
  @override
  String get searchMessage;

  /// Create a copy of States
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatesImplCopyWith<_$StatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
