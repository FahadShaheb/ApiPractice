// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:dio/dio.dart';

// class ToDoCrud extends StatefulWidget {
//   const ToDoCrud({Key? key}) : super(key: key);

//   @override
//   _ToDoCrudState createState() => _ToDoCrudState();
// }

// class _ToDoCrudState extends State<ToDoCrud> {
//   List todos = [];
//   String input = "";

//   @override
//   void initState() {
//     super.initState();
//     // todos.add("Item1");
//     // todos.add("Item2");
//     // todos.add("Item3");
//     // todos.add("Item4");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("CRUD Practice"),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: const Text("add to list"),
//                   content: TextField(
//                     onChanged: (String value) {
//                       input = value;
//                     },
//                   ),
//                   actions: <Widget>[
//                     FlatButton(
//                         onPressed: () {
//                           setState(() {
//                             todos.add(input);
//                           });
//                           Navigator.of(context).pop();
//                         },
//                         child: const Text("add"))
//                   ],
//                 );
//               });
//         },
//         child: const Icon(
//           Icons.add,
//           color: Colors.redAccent,
//         ),
//       ),
//       body: ListView.builder(
//           itemCount: todos.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Dismissible(
//               key: Key(todos[index]),
//               child: Card(
//                 child: ListTile(
//                   title: Text(todos[index]),
//                   trailing: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         todos.removeAt(index);
//                       });
//                     },
//                     icon: const Icon(Icons.delete),
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
