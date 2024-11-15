import 'package:greword/core/serivices/apis/dio_client.dart';
import 'package:greword/features/greword/data/models/gre_word_model.dart';

class GreWordRepository {
  final DioClient _dioClient;

  GreWordRepository(this._dioClient);

  Future<GreWordData> getRandomWord() async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>('/greWord');
      if (response.data != null) {
        final model = GreWordModel.fromJson(response.data!);
        return model.greWord;
      }
      throw Exception('Response data is null');
    } catch (e) {
      print('Error fetching word: $e');
      throw Exception('Failed to fetch GRE word: $e');
    }
  }
}
