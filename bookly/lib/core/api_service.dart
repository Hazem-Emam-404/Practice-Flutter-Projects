import 'package:bookly/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  const ApiService({required this.dio});

  Future<Response> get({required String endPoint, params}) async {
    try {
       final res = await dio.get(
        AppContants.baseUrl + endPoint,
        queryParameters: params,

      );
       return res;
    } on DioException catch(e){
      print(e.message);
      throw  Exception(e.message);
    } catch(e){
      throw Exception(e.toString());
    }
  }
}
