import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkingHelper {
  NetworkingHelper({this.url});

  Uri url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
