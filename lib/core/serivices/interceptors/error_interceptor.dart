import 'package:dio/dio.dart';
import 'package:greword/core/errors/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw NetworkException(message: 'Network Timeout');
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(message: 'Bad Request');
          case 401:
            throw UnauthorizedException(message: 'Unauthorized');
          case 403:
            throw UnauthorizedException(message: 'Forbidden');
          case 404:
            throw NotFoundException(message: 'Not Found');
          case 500:
            throw ServerException(message: 'Server Error');
          default:
            throw NetworkException(
              message: 'Network Error: ${err.response?.statusCode}',
            );
        }
      case DioExceptionType.unknown:
        throw NetworkException(message: 'Network Error: ${err.message}');
      default:
        throw NetworkException(message: 'Network Error');
    }
  }
}
