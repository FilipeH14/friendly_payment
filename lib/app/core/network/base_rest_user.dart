import 'dart:developer';

import 'package:dio/dio.dart';

class BaseRestUser {
  Future<void> restDioRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    Dio dio = Dio();

    final requestHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'content-type': 'application/json',
        'accept': 'application/json',
        'X-Parse-Application-Id': 'KCSJYUjesIiA2jrAXFybyT6Wzy6cOhJYkRrn61Vx',
        'X-Parse-REST-API-Key': 'wrAxxlQLw64BWafJzumvwuWZqywYB1Bq0s5c9RZq',
      });

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: requestHeaders,
          method: method,
        ),
        data: body,
      );

      return response.data;
    } on DioError catch (e, s) {
      log('Dio Connection Error -->', error: e, stackTrace: s);
    } on Exception catch (e, s) {
      log('Error -->', error: e, stackTrace: s);
    }
  }
}
