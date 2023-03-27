// import 'dart:convert';

// import 'package:crud/views/RegisterPage.dart';
// import 'package:crud/views/UserDetails.dart';
// import 'package:crud/views/services/Userservice.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;


// class ListUsers extends StatelessWidget {
//   const ListUsers({super.key});


//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(title: Text("List User"),
//       actions: [
//         IconButton(
//           onPressed: (){
//            Navigator.pushNamed(context, "/RegisterPage");
//           }, 
//         icon: Icon(Icons.add)
//         )
//       ],
//       ),
//       body: FutureBuilder(
//         future: UserService().getProducts(),
//         builder: (BuildContext context,AsyncSnapshot snapshot) {
//         if(snapshot.hasData){
//           return ListView.builder(
//             itemCount: snapshot.data.length,
//             itemBuilder: (context, index) {
//             return ListTile(
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserDetails(id: snapshot.data[index]['id'],)),
//                 );
//               },
//               title: Text(snapshot.data[index]['name']),
//             );
//           },
//           );  
//         }
//         return CircularProgressIndicator();
//       },
//       ),
//     );
//   }
// }