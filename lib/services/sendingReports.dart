import 'package:dio/dio.dart';
import 'package:dribbbledanimation/models/rapport.dart';

class ReportServices{
Dio dio;
ReportServices() {
  dio = new Dio();
  dio.options.connectTimeout = 3000;
  dio.options.baseUrl =
        'https://my-json-server.typicode.com/Fatou99/report/';
  
}

Future <Response> postReport(Report report) async {
  return await dio.post('reports', data: report.toJson());
 
}

}