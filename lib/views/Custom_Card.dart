// import 'package:flutter/material.dart';


// class CustomCard extends StatelessWidget {

// final Function updateFunction;
// final String name;
// final Function deleteFunction;

//   const CustomCard({
//    required this.deleteFunction, required this.name,required this.updateFunction
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: double.infinity,
//         child: Card(
//           elevation: 5,
//           child: Padding(padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               IconButton(onPressed: updateFunction(),
//                icon: Icon(Icons.edit,color: Colors.red,),

//               ),
//               Expanded(
//                 child: Container(
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("$name")
//                     ],
//               ),
//               )
//               ),
//               IconButton(onPressed:deleteFunction(), icon: Icon(Icons.delete,color: Colors.red,))
//             ],
//           ),
//           ),
//         ),
//     );
//   }
// }