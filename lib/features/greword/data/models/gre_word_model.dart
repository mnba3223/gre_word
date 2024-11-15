import 'package:freezed_annotation/freezed_annotation.dart';

part 'gre_word_model.freezed.dart';
part 'gre_word_model.g.dart';

@freezed
class GreWordModel with _$GreWordModel {
  const factory GreWordModel({
    required GreWordData greWord,
  }) = _GreWordModel;

  factory GreWordModel.fromJson(Map<String, dynamic> json) =>
      _$GreWordModelFromJson(json);
}

@freezed
class GreWordData with _$GreWordData {
  const factory GreWordData({
    required String word,
    required String meaning,
  }) = _GreWordData;

  factory GreWordData.fromJson(Map<String, dynamic> json) =>
      _$GreWordDataFromJson(json);
}
