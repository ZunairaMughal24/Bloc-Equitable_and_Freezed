// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Events {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPost,
    required TResult Function(String searchString) searchString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPost,
    TResult? Function(String searchString)? searchString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPost,
    TResult Function(String searchString)? searchString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPost value) fetchPost,
    required TResult Function(SearchString value) searchString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPost value)? fetchPost,
    TResult? Function(SearchString value)? searchString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPost value)? fetchPost,
    TResult Function(SearchString value)? searchString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res, Events>;
}

/// @nodoc
class _$EventsCopyWithImpl<$Res, $Val extends Events>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPostImplCopyWith<$Res> {
  factory _$$FetchPostImplCopyWith(
          _$FetchPostImpl value, $Res Function(_$FetchPostImpl) then) =
      __$$FetchPostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPostImplCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$FetchPostImpl>
    implements _$$FetchPostImplCopyWith<$Res> {
  __$$FetchPostImplCopyWithImpl(
      _$FetchPostImpl _value, $Res Function(_$FetchPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPostImpl implements FetchPost {
  const _$FetchPostImpl();

  @override
  String toString() {
    return 'Events.fetchPost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPost,
    required TResult Function(String searchString) searchString,
  }) {
    return fetchPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPost,
    TResult? Function(String searchString)? searchString,
  }) {
    return fetchPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPost,
    TResult Function(String searchString)? searchString,
    required TResult orElse(),
  }) {
    if (fetchPost != null) {
      return fetchPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPost value) fetchPost,
    required TResult Function(SearchString value) searchString,
  }) {
    return fetchPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPost value)? fetchPost,
    TResult? Function(SearchString value)? searchString,
  }) {
    return fetchPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPost value)? fetchPost,
    TResult Function(SearchString value)? searchString,
    required TResult orElse(),
  }) {
    if (fetchPost != null) {
      return fetchPost(this);
    }
    return orElse();
  }
}

abstract class FetchPost implements Events {
  const factory FetchPost() = _$FetchPostImpl;
}

/// @nodoc
abstract class _$$SearchStringImplCopyWith<$Res> {
  factory _$$SearchStringImplCopyWith(
          _$SearchStringImpl value, $Res Function(_$SearchStringImpl) then) =
      __$$SearchStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$SearchStringImplCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$SearchStringImpl>
    implements _$$SearchStringImplCopyWith<$Res> {
  __$$SearchStringImplCopyWithImpl(
      _$SearchStringImpl _value, $Res Function(_$SearchStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$SearchStringImpl(
      null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStringImpl implements SearchString {
  const _$SearchStringImpl(this.searchString);

  @override
  final String searchString;

  @override
  String toString() {
    return 'Events.searchString(searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStringImpl &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStringImplCopyWith<_$SearchStringImpl> get copyWith =>
      __$$SearchStringImplCopyWithImpl<_$SearchStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPost,
    required TResult Function(String searchString) searchString,
  }) {
    return searchString(this.searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPost,
    TResult? Function(String searchString)? searchString,
  }) {
    return searchString?.call(this.searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPost,
    TResult Function(String searchString)? searchString,
    required TResult orElse(),
  }) {
    if (searchString != null) {
      return searchString(this.searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPost value) fetchPost,
    required TResult Function(SearchString value) searchString,
  }) {
    return searchString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPost value)? fetchPost,
    TResult? Function(SearchString value)? searchString,
  }) {
    return searchString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPost value)? fetchPost,
    TResult Function(SearchString value)? searchString,
    required TResult orElse(),
  }) {
    if (searchString != null) {
      return searchString(this);
    }
    return orElse();
  }
}

abstract class SearchString implements Events {
  const factory SearchString(final String searchString) = _$SearchStringImpl;

  String get searchString;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStringImplCopyWith<_$SearchStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
