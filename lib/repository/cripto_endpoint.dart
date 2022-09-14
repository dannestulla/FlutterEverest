import 'package:dio/dio.dart';


class CriptoEndpoint {
  CriptoEndpoint(this.url);
  final String url;

  final dio = Dio(BaseOptions(
      baseUrl: "https://data.messari.io/api/"
  ));

  Future<Response> getCriptoList() {
    return dio.get(url);
  }
}