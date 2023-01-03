// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseState {
  BaseFlow get flow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseStateCopyWith<BaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res>;
  $Res call({BaseFlow flow});

  $BaseFlowCopyWith<$Res> get flow;
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res> implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  final BaseState _value;
  // ignore: unused_field
  final $Res Function(BaseState) _then;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as BaseFlow,
    ));
  }

  @override
  $BaseFlowCopyWith<$Res> get flow {
    return $BaseFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }
}

/// @nodoc
abstract class _$$_BaseStateCopyWith<$Res> implements $BaseStateCopyWith<$Res> {
  factory _$$_BaseStateCopyWith(
          _$_BaseState value, $Res Function(_$_BaseState) then) =
      __$$_BaseStateCopyWithImpl<$Res>;
  @override
  $Res call({BaseFlow flow});

  @override
  $BaseFlowCopyWith<$Res> get flow;
}

/// @nodoc
class __$$_BaseStateCopyWithImpl<$Res> extends _$BaseStateCopyWithImpl<$Res>
    implements _$$_BaseStateCopyWith<$Res> {
  __$$_BaseStateCopyWithImpl(
      _$_BaseState _value, $Res Function(_$_BaseState) _then)
      : super(_value, (v) => _then(v as _$_BaseState));

  @override
  _$_BaseState get _value => super._value as _$_BaseState;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_BaseState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as BaseFlow,
    ));
  }
}

/// @nodoc

class _$_BaseState implements _BaseState {
  const _$_BaseState({required this.flow});

  @override
  final BaseFlow flow;

  @override
  String toString() {
    return 'BaseState(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseState &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_BaseStateCopyWith<_$_BaseState> get copyWith =>
      __$$_BaseStateCopyWithImpl<_$_BaseState>(this, _$identity);
}

abstract class _BaseState implements BaseState {
  const factory _BaseState({required final BaseFlow flow}) = _$_BaseState;

  @override
  BaseFlow get flow;
  @override
  @JsonKey(ignore: true)
  _$$_BaseStateCopyWith<_$_BaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Base value) base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseFlowCopyWith<$Res> {
  factory $BaseFlowCopyWith(BaseFlow value, $Res Function(BaseFlow) then) =
      _$BaseFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$BaseFlowCopyWithImpl<$Res> implements $BaseFlowCopyWith<$Res> {
  _$BaseFlowCopyWithImpl(this._value, this._then);

  final BaseFlow _value;
  // ignore: unused_field
  final $Res Function(BaseFlow) _then;
}

/// @nodoc
abstract class _$$SplashCopyWith<$Res> {
  factory _$$SplashCopyWith(_$Splash value, $Res Function(_$Splash) then) =
      __$$SplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashCopyWithImpl<$Res> extends _$BaseFlowCopyWithImpl<$Res>
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
    return 'BaseFlow.splash()';
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
    required TResult Function() base,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
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
    required TResult Function(Base value) base,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements BaseFlow {
  const factory Splash() = _$Splash;
}

/// @nodoc
abstract class _$$BaseCopyWith<$Res> {
  factory _$$BaseCopyWith(_$Base value, $Res Function(_$Base) then) =
      __$$BaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseCopyWithImpl<$Res> extends _$BaseFlowCopyWithImpl<$Res>
    implements _$$BaseCopyWith<$Res> {
  __$$BaseCopyWithImpl(_$Base _value, $Res Function(_$Base) _then)
      : super(_value, (v) => _then(v as _$Base));

  @override
  _$Base get _value => super._value as _$Base;
}

/// @nodoc

class _$Base implements Base {
  const _$Base();

  @override
  String toString() {
    return 'BaseFlow.base()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Base);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() base,
  }) {
    return base();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
  }) {
    return base?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Base value) base,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Base value)? base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class Base implements BaseFlow {
  const factory Base() = _$Base;
}
