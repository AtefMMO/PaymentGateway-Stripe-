import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post(
      {required data,
      required String url,
      required String token,
      String? contentType}) async {
    var response = await dio.post(url,
        data: data,
        options: Options(
            headers: {'Authorization': "Bearer $token"},
            contentType: contentType));
    return response;
  }
}
