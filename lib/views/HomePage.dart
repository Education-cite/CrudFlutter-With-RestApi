
// import 'package:crud/views/Custom_Card.dart';
// import 'package:crud/views/services/Api_Service.dart';
// import 'package:crud/views/update.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// //new concept-----------------
// class HomePage extends StatefulWidget {

//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//    TextEditingController nameController =TextEditingController();
//  TextEditingController emailController =TextEditingController();
//  TextEditingController addressController =TextEditingController();
//   ApiService apiService = ApiService();

//   List<dynamic> task =[];

//   @override
//  void initState(){
//     getData();
//     super.initState();
//   }

//   getData() async{
//     task = await apiService.getAlbum();
//     //print(task);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           appBar: AppBar(
//             title: Text("User Details"),
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   TextField(
//                     controller: nameController,
//                     decoration: InputDecoration(
//                       labelText: 'User name'
//                     //  hintText: 'Enter title'
//                       ),
//                   ),
//                   SizedBox(height: 20,),
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(onPressed: (){
//                         var name = nameController.text;
//                         apiService.saveAlbum(name);
//                     }, child: Text("save"),
                    
//                     ),
//                   ),
                 
//               //  ...task.map((task){
//                   for(var i=0; i<task.length; i++)

//                      CustomCard(
//                     deleteFunction: (){
//                       apiService.deleteAlbum(task[i]['id']);
//                     },
//                     name: task[i]['name'],
//                     updateFunction: (){
//                       // Route route = MaterialPageRoute(builder: (_){
//                       //   return updateScreen(name:task[i]['name'],id: task[i]['id'].toString(),);
//                       // });
//                       // Navigator.push(context, route);
//                     },
//                   ),
//                 //  },
//                   //),
                
                 
//                 ],
//               ),
//             ),
//           ),
//     );
//   }
// }
