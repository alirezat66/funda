import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assignment/data/app_error.dart';

void main() {
  test('test for app Error', () {
    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.connectTimeout,
              requestOptions: RequestOptions(path: '')),
        ).type,
        equals(AppErrorType.timeout));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.receiveTimeout,
              requestOptions: RequestOptions(path: '')),
        ).type,
        equals(AppErrorType.timeout));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.sendTimeout,
              requestOptions: RequestOptions(path: '')),
        ).type,
        equals(AppErrorType.network));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.response,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 400)),
        ).type,
        equals(AppErrorType.badRequest));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.response,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 401)),
        ).type,
        equals(AppErrorType.unauthorized));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.response,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 500)),
        ).type,
        equals(AppErrorType.server));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.cancel,
              requestOptions: RequestOptions(path: '')),
        ).type,
        equals(AppErrorType.cancel));

    expect(
        AppError.fromException(
          DioError(
              type: DioErrorType.other,
              requestOptions: RequestOptions(path: '')),
        ).type,
        equals(AppErrorType.unknown));

    expect(AppError.fromException(const FileSystemException()).type,
        equals(AppErrorType.unknown));
  });
}
