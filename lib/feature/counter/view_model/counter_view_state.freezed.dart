// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterViewState {
  String get title => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterViewStateCopyWith<CounterViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterViewStateCopyWith<$Res> {
  factory $CounterViewStateCopyWith(
          CounterViewState value, $Res Function(CounterViewState) then) =
      _$CounterViewStateCopyWithImpl<$Res, CounterViewState>;
  @useResult
  $Res call({String title, int count});
}

/// @nodoc
class _$CounterViewStateCopyWithImpl<$Res, $Val extends CounterViewState>
    implements $CounterViewStateCopyWith<$Res> {
  _$CounterViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CounterViewStateCopyWith<$Res>
    implements $CounterViewStateCopyWith<$Res> {
  factory _$$_CounterViewStateCopyWith(
          _$_CounterViewState value, $Res Function(_$_CounterViewState) then) =
      __$$_CounterViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int count});
}

/// @nodoc
class __$$_CounterViewStateCopyWithImpl<$Res>
    extends _$CounterViewStateCopyWithImpl<$Res, _$_CounterViewState>
    implements _$$_CounterViewStateCopyWith<$Res> {
  __$$_CounterViewStateCopyWithImpl(
      _$_CounterViewState _value, $Res Function(_$_CounterViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? count = null,
  }) {
    return _then(_$_CounterViewState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CounterViewState implements _CounterViewState {
  const _$_CounterViewState({required this.title, this.count = 0});

  @override
  final String title;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CounterViewState(title: $title, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterViewState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterViewStateCopyWith<_$_CounterViewState> get copyWith =>
      __$$_CounterViewStateCopyWithImpl<_$_CounterViewState>(this, _$identity);
}

abstract class _CounterViewState implements CounterViewState {
  const factory _CounterViewState(
      {required final String title, final int count}) = _$_CounterViewState;

  @override
  String get title;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CounterViewStateCopyWith<_$_CounterViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
