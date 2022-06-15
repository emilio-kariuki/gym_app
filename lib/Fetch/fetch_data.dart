import 'dart:convert';

import 'package:gym_application/Model/item_model.dart';
import "package:http/http.dart" as http;

class RemoteServices {
  static var client = http.Client();
  static Future<List<Ecoville>> fetchData() async {
    var response = await client.get(Uri.parse(
        "https://api.unsplash.com/photos/?client_id=eM9IxHfZJFdyjx3dtLT8zoI05Xg_sJ-TEbjvEPQ2wH0"));

    if (response.statusCode == 200) {
      print("Information fetched successfully");
      var json = response.body;
      print(jsonDecode(json));
      return ecovilleFromJson(json);
    } else {
      throw Exception("Failed to load products");
    }
  }
}
