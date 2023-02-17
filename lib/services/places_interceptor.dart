import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1IjoicGVyaWtlIiwiYSI6ImNsZTVoeHpjOTA0b2QzcW1qa3N2cm1nd3cifQ.eXcBqrGtBjfp9VhEuzK3rQ';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters
        .addAll({'access_token': accessToken, 'languaje': 'es'});

    super.onRequest(options, handler);
  }
}
