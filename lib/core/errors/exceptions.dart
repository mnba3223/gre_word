// lib/core/errors/exceptions.dart
class NetworkException implements Exception {
  final String message;
  final int? statusCode;

  NetworkException({
    required this.message,
    this.statusCode,
  });

  @override
  String toString() => message;
}

class BadRequestException extends NetworkException {
  BadRequestException({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}

class UnauthorizedException extends NetworkException {
  UnauthorizedException({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}

class NotFoundException extends NetworkException {
  NotFoundException({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}

class ServerException extends NetworkException {
  ServerException({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}
