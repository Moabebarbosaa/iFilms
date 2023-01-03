// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  HomeFlow get flow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({HomeFlow flow});

  $HomeFlowCopyWith<$Res> get flow;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as HomeFlow,
    ));
  }

  @override
  $HomeFlowCopyWith<$Res> get flow {
    return $HomeFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({HomeFlow flow});

  @override
  $HomeFlowCopyWith<$Res> get flow;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_HomeState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as HomeFlow,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({required this.flow});

  @override
  final HomeFlow flow;

  @override
  String toString() {
    return 'HomeState(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({required final HomeFlow flow}) = _$_HomeState;

  @override
  HomeFlow get flow;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Home value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFlowCopyWith<$Res> {
  factory $HomeFlowCopyWith(HomeFlow value, $Res Function(HomeFlow) then) =
      _$HomeFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeFlowCopyWithImpl<$Res> implements $HomeFlowCopyWith<$Res> {
  _$HomeFlowCopyWithImpl(this._value, this._then);

  final HomeFlow _value;
  // ignore: unused_field
  final $Res Function(HomeFlow) _then;
}

/// @nodoc
abstract class _$$SplashCopyWith<$Res> {
  factory _$$SplashCopyWith(_$Splash value, $Res Function(_$Splash) then) =
      __$$SplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashCopyWithImpl<$Res> extends _$HomeFlowCopyWithImpl<$Res>
    implements _$$SplashCopyWith<$Res> {
  __$$SplashCopyWithImpl(_$Splash _value, $Res Function(_$Splash) _then)
      : super(_value, (v) => _then(v as _$Splash));

  @override
  _$Splash get _value => super._value as _$Splash;
}

/// @nodoc

class _$Splash implements Splash {
  const _$Splash();

  @override
  String toString() {
    return 'HomeFlow.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Splash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() home,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Home value) home,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements HomeFlow {
  const factory Splash() = _$Splash;
}

/// @nodoc
abstract class _$$HomeCopyWith<$Res> {
  factory _$$HomeCopyWith(_$Home value, $Res Function(_$Home) then) =
      __$$HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeCopyWithImpl<$Res> extends _$HomeFlowCopyWithImpl<$Res>
    implements _$$HomeCopyWith<$Res> {
  __$$HomeCopyWithImpl(_$Home _value, $Res Function(_$Home) _then)
      : super(_value, (v) => _then(v as _$Home));

  @override
  _$Home get _value => super._value as _$Home;
}

/// @nodoc

class _$Home implements Home {
  const _$Home();

  @override
  String toString() {
    return 'HomeFlow.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Home value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class Home implements HomeFlow {
  const factory Home() = _$Home;
}
