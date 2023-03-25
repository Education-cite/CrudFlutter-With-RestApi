// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class DataBaseHelper{
//   Future<http.Response> addUser(String nameController,String emailController,String addressController) async {

//     var uri = Uri.parse("http://192.168.0.107:8080/addUser") ;

//     Map data ={
//       'name':'$nameController',
//       'email':'$emailController',
//       'address':'$addressController'
//     };

//     var body = json.encode(data);
//     var response = await http.post(uri,
//     headers: {"Content-Type":"application/json"},body: body );
//     print("${response.body}");
//     return response;
//   }





// }