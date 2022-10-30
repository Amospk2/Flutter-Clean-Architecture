import 'package:resultadoeleicao/core/data/service/http_service.dart';
import 'package:dio/dio.dart';

class DioHttpServiceImp implements HttpService{

  late Dio _dio;
  DioHttpServiceImp()
  {
    _dio = Dio();
  }
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
 

}