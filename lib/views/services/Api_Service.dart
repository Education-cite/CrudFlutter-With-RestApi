// import 'dart:convert';

// import 'package:http/http.dart' as http;

// //new concept-------------
// class ApiService{

//   final baseURL = "http://192.168.0.107:8080/users";
//     final baseURL2 = "http://192.168.0.107:8080/addUser";
//       //  final baseURL3 = "http://192.168.0.107:8080/update/$id";
//                // final baseURL4 = "http://192.168.0.107:8080/delete/$id";




//   Future getAlbum() async{
//        final url = Uri.parse(baseURL);
//       final response = await http.get(url);
//    // var response = await http.get(Uri.http("$baseURL","users"));

//     if(response.statusCode==200){
//       return json.decode(response.body);
//     }else{
//       throw Exception("Failed to load data");
//     }

//   }



  
//   Future saveAlbum(String name) async{
//        final url = Uri.parse(baseURL2);
//       final response = await http.post(url,
//       body: jsonEncode(<String,String>{
//         "name":name
//       }),
//       headers: <String,String>{
//           'Content-type': 'application/json; charset=UTF-8',
//       }
//       );
//   //  var response = await http.get(Uri.https("$baseURL","albums"));

//     print("${response.statusCode}");
//     if(response.statusCode==201){
//       return json.decode(response.body);
//     }

//   }




//   Future updateAlbum(String name, id) async{
//        final url = Uri.parse("http://192.168.0.107:8080/update/$id");
//       final response = await http.put(url,
//       body: jsonEncode(<String,String>{
//         "name":name
//       }),
//       headers: <String,String>{
//           'Content-type': 'application/json; charset=UTF-8',
//       }
//       );
//   //  var response = await http.get(Uri.https("$baseURL","albums"));

//     print("${response.statusCode}");
//     if(response.statusCode==200){
//       return json.encode(response.body);
//     }else{
//       throw Exception("Failed to load data");
//     }

//   }




//   Future deleteAlbum( id) async{
//        final url = Uri.parse("http://192.168.0.107:8080/delete/$id");
//       final response = await http.delete(url,
         
//       headers: <String,String>{
//           'Content-type': 'application/json; charset=UTF-8',
//       }
//       );
//   //  var response = await http.get(Uri.https("$baseURL","albums"));

//     print("${response.statusCode}");
//     if(response.statusCode==200){
//       return true;
//     }else{
//       return false;
//     }

//   }








// }