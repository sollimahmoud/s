import 'package:dio/dio.dart';
import 'package:newsfinall/Models/modelnews.dart';

class NewsServices {
  static Dio dio = Dio();

  static Future<newmodel> getData() async {
    Response res = await dio.get('https://newsapi.org/v2/everything?q=tesla&from=2024-11-10&sortBy=publishedAt&apiKey=YOUR_API_KEY');

    if (res.statusCode == 200) {
      return newmodel.fromjson(res.data);
    } else if (res.statusCode == 426) {
      throw Exception("Upgrade Required: Server requires a different protocol.");
    } else {
      throw Exception("Error: ${res.statusCode}");
    }
  }
}
