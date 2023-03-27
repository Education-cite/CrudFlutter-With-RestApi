import 'dart:convert';

import 'package:http/http.dart' as http;

class HTTPHelper {
  Future<List<Map>> fetchItems() async {
    List<Map> items = [];
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      String jsonString = response.body;
      List data = jsonDecode(jsonString);
      items = data.cast<Map>();
    }

    return items;
  }

  Future<Map> getItem(itemId) async {
    Map item = {};
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$itemId'));
    if (response.statusCode == 200) {
      String jsonString = response.body;
      item = jsonDecode(jsonString);
    }

    return item;
  }

  Future<bool> addItem(Map data) async {
    bool status = false;
    http.Response response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        body: jsonEncode(data),
        headers: {'Content-type': 'application/json'});

    if (response.statusCode == 201) {
      status = response.body.isNotEmpty;
    }

    return status;
  }

  Future<bool> updateItem(Map data, String itemId) async {
    bool status = false;

    http.Response response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$itemId'),
        body: jsonEncode(data),
        headers: {'Content-type': 'application/json'});

    if (response.statusCode == 200) {
      status = response.body.isNotEmpty;
    }

    return status;
  }

  Future<bool> deleteItem(String itemId) async {
    bool status = false;
    http.Response response = await http.delete(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$itemId'));
    if (response.statusCode == 200) {
      status = true;
    }
    return status;
  }


  
}
