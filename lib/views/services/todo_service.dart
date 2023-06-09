import 'dart:convert';
import 'package:http/http.dart' as http;

//other new------------


class TodoService {

  static Future<bool> deleteById(String id) async {
    final url = 'https://api.nstack.in/v1/todos/$id';
   // final url = 'http://192.168.0.107:8080/delete/$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.statusCode == 200;
  }

  static Future<List?> fetchTodo() async {
    final url = 'https://api.nstack.in/v1/todos?page=1&limit=10';
   // final url = 'http://192.168.0.107:8080/users';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map;

      final result = json['items'] as List;
      return result;
    } else {
      return null;
    }
    
  }

  static Future<bool> updateData(String id, Map body) async {
    final url = 'https://api.nstack.in/v1/todos/$id';
   //  final url = 'http://192.168.0.107:8080/update/$id';

    final uri = Uri.parse(url);
    final response = await http.put(
      uri,
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );
    return response.statusCode == 200;
  }

  static Future<bool> submitData(Map body) async {
    final url = 'https://api.nstack.in/v1/todos';
    //  final url = 'http://192.168.0.107:8080/addUser';

    final uri = Uri.parse(url);
    final response = await http.post(
      uri,
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );
    return response.statusCode == 200;
  }
}
