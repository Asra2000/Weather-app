import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper{
  String url;
  NetworkHelper({this.url});

  Future<Map> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      Map decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
  }