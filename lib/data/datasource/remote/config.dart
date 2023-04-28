import 'package:dio/dio.dart';

class Config {
  static Dio getDio() {
    Dio dio = Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/movie/"));
    dio.interceptors
    .add(LogInterceptor(responseBody: true, request: true, error: true));
    return dio;
  }
}