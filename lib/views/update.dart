


// import 'package:crud/views/services/Api_Service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/widgets.dart';

// //new concept-------------
// class updateScreen extends StatefulWidget {
//   final String id;
//   final String name;
//   const updateScreen({required this.id,required this.name});

//   @override
//   State<updateScreen> createState() => _updateScreenState();
// }

// class _updateScreenState extends State<updateScreen> {

//   final ApiService apiService=ApiService();
//   late TextEditingController _nameEditingController;


//   @override
//   void initState(){
//     _nameEditingController = TextEditingController(text: widget.name);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Update User"),

//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameEditingController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 hintText: 'enter name'
//               ),
//               autofocus: true,
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(onPressed: (){
//                 apiService.updateAlbum(widget.name,widget.id);
//               },
//               child: Text("Update "),
//               ),
              
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }