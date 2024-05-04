import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post(
      {required data,
      required String url,
    String? token,
      String? contentType,
     Map<String,String> ?headers}) async {
    var response = await dio.post(url,
        data: data,
        options: Options(
            headers: headers??{'Authorization': 'Bearer $token'},
            contentType: contentType));
    return response;
  }
}
