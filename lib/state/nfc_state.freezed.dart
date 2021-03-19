// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nfc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NfcStateTearOff {
  const _$NfcStateTearOff();

// ignore: unused_element
  _NfcState call(
      {String cardId = "", String content = "", bool listened = false}) {
    return _NfcState(
      cardId: cardId,
      content: content,
      listened: listened,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NfcState = _$NfcStateTearOff();

/// @nodoc
mixin _$NfcState {
  String get cardId;
  String get content;
  bool get listened;

  @JsonKey(ignore: true)
  $NfcStateCopyWith<NfcState> get copyWith;
}

/// @nodoc
abstract class $NfcStateCopyWith<$Res> {
  factory $NfcStateCopyWith(NfcState value, $Res Function(NfcState) then) =
      _$NfcStateCopyWithImpl<$Res>;
  $Res call({String cardId, String content, bool listened});
}

/// @nodoc
class _$NfcStateCopyWithImpl<$Res> implements $NfcStateCopyWith<$Res> {
  _$NfcStateCopyWithImpl(this._value, this._then);

  final NfcState _value;
  // ignore: unused_field
  final $Res Function(NfcState) _then;

  @override
  $Res call({
    Object cardId = freezed,
    Object content = freezed,
    Object listened = freezed,
  }) {
    return _then(_value.copyWith(
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      content: content == freezed ? _value.content : content as String,
      listened: listened == freezed ? _value.listened : listened as bool,
    ));
  }
}

/// @nodoc
abstract class _$NfcStateCopyWith<$Res> implements $NfcStateCopyWith<$Res> {
  factory _$NfcStateCopyWith(_NfcState value, $Res Function(_NfcState) then) =
      __$NfcStateCopyWithImpl<$Res>;
  @override
  $Res call({String cardId, String content, bool listened});
}

/// @nodoc
class __$NfcStateCopyWithImpl<$Res> extends _$NfcStateCopyWithImpl<$Res>
    implements _$NfcStateCopyWith<$Res> {
  __$NfcStateCopyWithImpl(_NfcState _value, $Res Function(_NfcState) _then)
      : super(_value, (v) => _then(v as _NfcState));

  @override
  _NfcState get _value => super._value as _NfcState;

  @override
  $Res call({
    Object cardId = freezed,
    Object content = freezed,
    Object listened = freezed,
  }) {
    return _then(_NfcState(
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      content: content == freezed ? _value.content : content as String,
      listened: listened == freezed ? _value.listened : listened as bool,
    ));
  }
}

/// @nodoc
class _$_NfcState implements _NfcState {
  _$_NfcState({this.cardId = "", this.content = "", this.listened = false})
      : assert(cardId != null),
        assert(content != null),
        assert(listened != null);

  @JsonKey(defaultValue: "")
  @override
  final String cardId;
  @JsonKey(defaultValue: "")
  @override
  final String content;
  @JsonKey(defaultValue: false)
  @override
  final bool listened;

  @override
  String toString() {
    return 'NfcState(cardId: $cardId, content: $content, listened: $listened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NfcState &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.listened, listened) ||
                const DeepCollectionEquality()
                    .equals(other.listened, listened)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(listened);

  @JsonKey(ignore: true)
  @override
  _$NfcStateCopyWith<_NfcState> get copyWith =>
      __$NfcStateCopyWithImpl<_NfcState>(this, _$identity);
}

abstract class _NfcState implements NfcState {
  factory _NfcState({String cardId, String content, bool listened}) =
      _$_NfcState;

  @override
  String get cardId;
  @override
  String get content;
  @override
  bool get listened;
  @override
  @JsonKey(ignore: true)
  _$NfcStateCopyWith<_NfcState> get copyWith;
}
