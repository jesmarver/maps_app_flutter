import 'package:dio/dio.dart';

const accessToken =
    'pk.eyJ1IjoicGVyaWtlIiwiYSI6ImNsZTVoeHpjOTA0b2QzcW1qa3N2cm1nd3cifQ.eXcBqrGtBjfp9VhEuzK3rQ';

class TrafficInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken,
    });
    super.onRequest(options, handler);
  }
}
