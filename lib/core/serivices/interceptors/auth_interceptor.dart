import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 這裡可以加入 token
    // final token = await getToken();
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }
    handler.next(options);
  }
}
