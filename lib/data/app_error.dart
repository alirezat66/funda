import 'dart:io';

import 'package:dio/dio.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  forbidden,
  cancel,
  timeout,
  server,
  unknown,
}

class AppError {
  final String message;
  final AppErrorType type;
  const AppError({required this.message, required this.type});
  factory AppError.fromException(Exception error) {
    String message;
    AppErrorType type;
    if (error is DioError) {
      message = error.message;
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
          type = AppErrorType.timeout;
          break;
        case DioErrorType.sendTimeout:
          type = AppErrorType.network;
          break;
        case DioErrorType.response:
          switch (error.response!.statusCode) {
            case HttpStatus.badRequest: // 400
              type = AppErrorType.badRequest;
              break;
            case HttpStatus.unauthorized: // 401
              type = AppErrorType.unauthorized;
              break;
            case HttpStatus.forbidden: //403
              type = AppErrorType.forbidden;
              break;
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = AppErrorType.server;
              break;
            default:
              type = AppErrorType.unknown;
              break;
          }
          break;
        case DioErrorType.cancel:
          type = AppErrorType.cancel;
          break;
        case DioErrorType.other:
          type = AppErrorType.unknown;
          break;
        default:
          type = AppErrorType.unknown;
          break;
      }
    } else {
      type = AppErrorType.unknown;
      message = 'AppError: $error';
    }
    return AppError(type: type, message: message);
  }
}
