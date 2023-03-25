// import 'package:crud/views/services/Userservice.dart';
// import 'package:flutter/material.dart';

// class UserDetails extends StatefulWidget {

//   int id;
//    UserDetails({super.key,required this.id});

//   @override
//   State<UserDetails> createState() => _UserDetailsState();
// }

// class _UserDetailsState extends State<UserDetails> {

//   late Future SingleProducts;

//    @override
//    void initState() {
//       SingleProducts = UserService().getSingleProducts(widget.id);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: SafeArea(
//         child: FutureBuilder(
//           future:SingleProducts ,
//           builder: (context,AsyncSnapshot snapshot) {
//           if(snapshot.hasData){
//               return Column(
//                 children: [
//                   Text(snapshot.data['email']),
//                   Container(
//                     child: Text(snapshot.data['name']),
//                   ),
//                 ],
//               );
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//         ),
//       ),
//     );
//   }
// }