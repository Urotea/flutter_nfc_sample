// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppActionsTearOff {
  const _$AppActionsTearOff();

// ignore: unused_element
  ListenStartButtonTapped listenStartButtonTapped() {
    return const ListenStartButtonTapped();
  }

// ignore: unused_element
  NfcListened nfcListened(String cardId, String content) {
    return NfcListened(
      cardId,
      content,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppActions = _$AppActionsTearOff();

/// @nodoc
mixin _$AppActions {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenStartButtonTapped(),
    @required TResult nfcListened(String cardId, String content),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenStartButtonTapped(),
    TResult nfcListened(String cardId, String content),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenStartButtonTapped(ListenStartButtonTapped value),
    @required TResult nfcListened(NfcListened value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenStartButtonTapped(ListenStartButtonTapped value),
    TResult nfcListened(NfcListened value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AppActionsCopyWith<$Res> {
  factory $AppActionsCopyWith(
          AppActions value, $Res Function(AppActions) then) =
      _$AppActionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppActionsCopyWithImpl<$Res> implements $AppActionsCopyWith<$Res> {
  _$AppActionsCopyWithImpl(this._value, this._then);

  final AppActions _value;
  // ignore: unused_field
  final $Res Function(AppActions) _then;
}

/// @nodoc
abstract class $ListenStartButtonTappedCopyWith<$Res> {
  factory $ListenStartButtonTappedCopyWith(ListenStartButtonTapped value,
          $Res Function(ListenStartButtonTapped) then) =
      _$ListenStartButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenStartButtonTappedCopyWithImpl<$Res>
    extends _$AppActionsCopyWithImpl<$Res>
    implements $ListenStartButtonTappedCopyWith<$Res> {
  _$ListenStartButtonTappedCopyWithImpl(ListenStartButtonTapped _value,
      $Res Function(ListenStartButtonTapped) _then)
      : super(_value, (v) => _then(v as ListenStartButtonTapped));

  @override
  ListenStartButtonTapped get _value => super._value as ListenStartButtonTapped;
}

/// @nodoc
class _$ListenStartButtonTapped implements ListenStartButtonTapped {
  const _$ListenStartButtonTapped();

  @override
  String toString() {
    return 'AppActions.listenStartButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenStartButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenStartButtonTapped(),
    @required TResult nfcListened(String cardId, String content),
  }) {
    assert(listenStartButtonTapped != null);
    assert(nfcListened != null);
    return listenStartButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenStartButtonTapped(),
    TResult nfcListened(String cardId, String content),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenStartButtonTapped != null) {
      return listenStartButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenStartButtonTapped(ListenStartButtonTapped value),
    @required TResult nfcListened(NfcListened value),
  }) {
    assert(listenStartButtonTapped != null);
    assert(nfcListened != null);
    return listenStartButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenStartButtonTapped(ListenStartButtonTapped value),
    TResult nfcListened(NfcListened value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenStartButtonTapped != null) {
      return listenStartButtonTapped(this);
    }
    return orElse();
  }
}

abstract class ListenStartButtonTapped implements AppActions {
  const factory ListenStartButtonTapped() = _$ListenStartButtonTapped;
}

/// @nodoc
abstract class $NfcListenedCopyWith<$Res> {
  factory $NfcListenedCopyWith(
          NfcListened value, $Res Function(NfcListened) then) =
      _$NfcListenedCopyWithImpl<$Res>;
  $Res call({String cardId, String content});
}

/// @nodoc
class _$NfcListenedCopyWithImpl<$Res> extends _$AppActionsCopyWithImpl<$Res>
    implements $NfcListenedCopyWith<$Res> {
  _$NfcListenedCopyWithImpl(
      NfcListened _value, $Res Function(NfcListened) _then)
      : super(_value, (v) => _then(v as NfcListened));

  @override
  NfcListened get _value => super._value as NfcListened;

  @override
  $Res call({
    Object cardId = freezed,
    Object content = freezed,
  }) {
    return _then(NfcListened(
      cardId == freezed ? _value.cardId : cardId as String,
      content == freezed ? _value.content : content as String,
    ));
  }
}

/// @nodoc
class _$NfcListened implements NfcListened {
  const _$NfcListened(this.cardId, this.content)
      : assert(cardId != null),
        assert(content != null);

  @override
  final String cardId;
  @override
  final String content;

  @override
  String toString() {
    return 'AppActions.nfcListened(cardId: $cardId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NfcListened &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardId) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  $NfcListenedCopyWith<NfcListened> get copyWith =>
      _$NfcListenedCopyWithImpl<NfcListened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenStartButtonTapped(),
    @required TResult nfcListened(String cardId, String content),
  }) {
    assert(listenStartButtonTapped != null);
    assert(nfcListened != null);
    return nfcListened(cardId, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenStartButtonTapped(),
    TResult nfcListened(String cardId, String content),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nfcListened != null) {
      return nfcListened(cardId, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenStartButtonTapped(ListenStartButtonTapped value),
    @required TResult nfcListened(NfcListened value),
  }) {
    assert(listenStartButtonTapped != null);
    assert(nfcListened != null);
    return nfcListened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenStartButtonTapped(ListenStartButtonTapped value),
    TResult nfcListened(NfcListened value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nfcListened != null) {
      return nfcListened(this);
    }
    return orElse();
  }
}

abstract class NfcListened implements AppActions {
  const factory NfcListened(String cardId, String content) = _$NfcListened;

  String get cardId;
  String get content;
  @JsonKey(ignore: true)
  $NfcListenedCopyWith<NfcListened> get copyWith;
}
