import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class CallApi {
  Dio dio;
  // final String _url = 'http://51.178.54.128:2020/api/';
  final String _url = 'http://10.0.2.2:8000/api/';

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(fullUrl,
        body: jsonEncode(data), headers: _setHeaders());
  }

  getData(gouv) async {
    var fullUrl = _url + 'getdeleg';
    dio = new Dio();
    return await dio
        .get(Uri.encodeFull(fullUrl), queryParameters: {"gouv": gouv});
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
