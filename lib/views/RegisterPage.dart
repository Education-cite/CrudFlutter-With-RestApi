
// import 'package:crud/controllers/databasehelpers.dart';
// import 'package:flutter/material.dart';


// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {

// TextEditingController nameController =TextEditingController();
// TextEditingController emailController =TextEditingController();
// TextEditingController addressController =TextEditingController();

// DataBaseHelper service = DataBaseHelper();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('Registration Page') ,
        
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Text("Name"),
//             SizedBox(
//               height: 10,
//             ),
//             TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(border: OutlineInputBorder(),
//                 hintText: "Enter Your name",
//                 ),
//             ),
//              Text("Email"),
//             SizedBox(
//               height: 10,
//             ),
//             TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(border: OutlineInputBorder(),
//                 hintText: "Enter Your email",
//                 ),
//             ),
//              Text("address"),
//             SizedBox(
//               height: 10,
//             ),

//             TextField(
//                 controller: addressController,
//                 decoration: InputDecoration(border: OutlineInputBorder(),
//                 hintText: "Enter Your address",
//                 ),
//             ),
//             ElevatedButton(onPressed: (){

//               service.addUser(
//                 nameController.text,
//                 emailController.text,
//                 addressController.text
//                 );

//                Navigator.pushNamed(context, "/ListUsers");
//                print("name: ${nameController.text}");
//                print("email: ${emailController.text}");
//                print("address: ${addressController.text}");

//             }, 
            
//             child: Text("Resister User",
//             style: TextStyle(
//               fontSize: 25,
//             ),
//             )
//             )
//         ]
//         ),
//       ),
//     );
//   }
// }