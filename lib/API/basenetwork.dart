import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:project/API/model.dart';

class BaseNetwork {
  static final String baseUrl = "https://fakestoreapi.com";


  Future<List<Model>> getProd() async {
    var response = await http.get(Uri.parse("$baseUrl/products"));
    List<Model> products = [];
    (jsonDecode(response.body)).forEach((element) {
      products.add(Model.fromJson(element));
    });

    return products;
  }

  Future<Map<String, dynamic>> getDetails(int id) async {
    var param = id.toString();
    var response = await http.get(Uri.parse("$baseUrl/products/${param}"));
    var jsonData = jsonDecode(response.body);
    // var detailProduct = Model.fromJson(jsonData);

    return jsonData;
  }

  Future<List<Model>> getListCat() async {
    var response = await http.get(Uri.parse("$baseUrl/products/categories"));
    List<Model> products = [];
    (jsonDecode(response.body)).forEach((element) {
      products.add(Model.fromJson(element));
    });

    return products;
  }

  Future<Map<String, dynamic>> getCat(String category) async {
    var param = category;
    var response = await http.get(Uri.parse("$baseUrl/products/${param}"));
    var jsonData = jsonDecode(response.body);
    // var detailProduct = Model.fromJson(jsonData);

    return jsonData;
  }

  static void debugPrint(String value) {
    print("[BASE_NETWORK] - $value");
  }
}