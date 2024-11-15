// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gre_word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GreWordModelImpl _$$GreWordModelImplFromJson(Map<String, dynamic> json) =>
    _$GreWordModelImpl(
      greWord: GreWordData.fromJson(json['greWord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GreWordModelImplToJson(_$GreWordModelImpl instance) =>
    <String, dynamic>{
      'greWord': instance.greWord,
    };

_$GreWordDataImpl _$$GreWordDataImplFromJson(Map<String, dynamic> json) =>
    _$GreWordDataImpl(
      word: json['word'] as String,
      meaning: json['meaning'] as String,
    );

Map<String, dynamic> _$$GreWordDataImplToJson(_$GreWordDataImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'meaning': instance.meaning,
    };
