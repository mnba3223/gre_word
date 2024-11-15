// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gre_word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GreWordModel _$GreWordModelFromJson(Map<String, dynamic> json) {
  return _GreWordModel.fromJson(json);
}

/// @nodoc
mixin _$GreWordModel {
  GreWordData get greWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GreWordModelCopyWith<GreWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreWordModelCopyWith<$Res> {
  factory $GreWordModelCopyWith(
          GreWordModel value, $Res Function(GreWordModel) then) =
      _$GreWordModelCopyWithImpl<$Res, GreWordModel>;
  @useResult
  $Res call({GreWordData greWord});

  $GreWordDataCopyWith<$Res> get greWord;
}

/// @nodoc
class _$GreWordModelCopyWithImpl<$Res, $Val extends GreWordModel>
    implements $GreWordModelCopyWith<$Res> {
  _$GreWordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? greWord = null,
  }) {
    return _then(_value.copyWith(
      greWord: null == greWord
          ? _value.greWord
          : greWord // ignore: cast_nullable_to_non_nullable
              as GreWordData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GreWordDataCopyWith<$Res> get greWord {
    return $GreWordDataCopyWith<$Res>(_value.greWord, (value) {
      return _then(_value.copyWith(greWord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GreWordModelImplCopyWith<$Res>
    implements $GreWordModelCopyWith<$Res> {
  factory _$$GreWordModelImplCopyWith(
          _$GreWordModelImpl value, $Res Function(_$GreWordModelImpl) then) =
      __$$GreWordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GreWordData greWord});

  @override
  $GreWordDataCopyWith<$Res> get greWord;
}

/// @nodoc
class __$$GreWordModelImplCopyWithImpl<$Res>
    extends _$GreWordModelCopyWithImpl<$Res, _$GreWordModelImpl>
    implements _$$GreWordModelImplCopyWith<$Res> {
  __$$GreWordModelImplCopyWithImpl(
      _$GreWordModelImpl _value, $Res Function(_$GreWordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? greWord = null,
  }) {
    return _then(_$GreWordModelImpl(
      greWord: null == greWord
          ? _value.greWord
          : greWord // ignore: cast_nullable_to_non_nullable
              as GreWordData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GreWordModelImpl implements _GreWordModel {
  const _$GreWordModelImpl({required this.greWord});

  factory _$GreWordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreWordModelImplFromJson(json);

  @override
  final GreWordData greWord;

  @override
  String toString() {
    return 'GreWordModel(greWord: $greWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreWordModelImpl &&
            (identical(other.greWord, greWord) || other.greWord == greWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, greWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GreWordModelImplCopyWith<_$GreWordModelImpl> get copyWith =>
      __$$GreWordModelImplCopyWithImpl<_$GreWordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GreWordModelImplToJson(
      this,
    );
  }
}

abstract class _GreWordModel implements GreWordModel {
  const factory _GreWordModel({required final GreWordData greWord}) =
      _$GreWordModelImpl;

  factory _GreWordModel.fromJson(Map<String, dynamic> json) =
      _$GreWordModelImpl.fromJson;

  @override
  GreWordData get greWord;
  @override
  @JsonKey(ignore: true)
  _$$GreWordModelImplCopyWith<_$GreWordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GreWordData _$GreWordDataFromJson(Map<String, dynamic> json) {
  return _GreWordData.fromJson(json);
}

/// @nodoc
mixin _$GreWordData {
  String get word => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GreWordDataCopyWith<GreWordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreWordDataCopyWith<$Res> {
  factory $GreWordDataCopyWith(
          GreWordData value, $Res Function(GreWordData) then) =
      _$GreWordDataCopyWithImpl<$Res, GreWordData>;
  @useResult
  $Res call({String word, String meaning});
}

/// @nodoc
class _$GreWordDataCopyWithImpl<$Res, $Val extends GreWordData>
    implements $GreWordDataCopyWith<$Res> {
  _$GreWordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? meaning = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GreWordDataImplCopyWith<$Res>
    implements $GreWordDataCopyWith<$Res> {
  factory _$$GreWordDataImplCopyWith(
          _$GreWordDataImpl value, $Res Function(_$GreWordDataImpl) then) =
      __$$GreWordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, String meaning});
}

/// @nodoc
class __$$GreWordDataImplCopyWithImpl<$Res>
    extends _$GreWordDataCopyWithImpl<$Res, _$GreWordDataImpl>
    implements _$$GreWordDataImplCopyWith<$Res> {
  __$$GreWordDataImplCopyWithImpl(
      _$GreWordDataImpl _value, $Res Function(_$GreWordDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? meaning = null,
  }) {
    return _then(_$GreWordDataImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GreWordDataImpl implements _GreWordData {
  const _$GreWordDataImpl({required this.word, required this.meaning});

  factory _$GreWordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GreWordDataImplFromJson(json);

  @override
  final String word;
  @override
  final String meaning;

  @override
  String toString() {
    return 'GreWordData(word: $word, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreWordDataImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, meaning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GreWordDataImplCopyWith<_$GreWordDataImpl> get copyWith =>
      __$$GreWordDataImplCopyWithImpl<_$GreWordDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GreWordDataImplToJson(
      this,
    );
  }
}

abstract class _GreWordData implements GreWordData {
  const factory _GreWordData(
      {required final String word,
      required final String meaning}) = _$GreWordDataImpl;

  factory _GreWordData.fromJson(Map<String, dynamic> json) =
      _$GreWordDataImpl.fromJson;

  @override
  String get word;
  @override
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$GreWordDataImplCopyWith<_$GreWordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
