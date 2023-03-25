// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class UserService{
  
//   Future getProducts() async{
//     final productUrl = Uri.parse("http://192.168.0.107:8080/users");
//     final response = await http.get(productUrl);
//     print(response.statusCode);
//         print(response.body);

//     return json.decode(response.body);
//   }


//    Future getSingleProducts(int id) async{
//    final productUrl = Uri.parse("http://192.168.0.107:8080/users/$id");
//     final response = await http.get(productUrl);
//     return json.decode(response.body);
//   }

// }