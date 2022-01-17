import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:funda_assignment/configuration/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((_) => FundaDio.getInstance());

class FundaDio with DioMixin implements Dio {
  FundaDio([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: Constants.of().endpoint,
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll({
        'Content-Type': 'application/json',
      });
      handler.next(options);
    }));

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => FundaDio();
}
