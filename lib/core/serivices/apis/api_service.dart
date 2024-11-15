import 'package:dio/dio.dart';
import 'package:greword/core/errors/exceptions.dart';
import 'package:greword/core/serivices/apis/dio_client.dart';

class ApiService {
  final DioClient _dioClient;

  ApiService(this._dioClient);

  Future<T> handleApiCall<T>(Future<T> Function() apiCall) async {
    try {
      return await apiCall();
    } on DioException catch (e) {
      // DioError 已經被 ErrorInterceptor 處理並轉換為我們的自定義異常
      rethrow;
    } on NetworkException {
      // 這裡可以處理特定的 NetworkException
      rethrow;
    } catch (e) {
      throw NetworkException(
        message: '發生未知錯誤',
        statusCode: null,
      );
    }
  }
}
