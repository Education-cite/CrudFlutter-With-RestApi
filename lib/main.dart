import 'package:crud/controllers/databasehelpers.dart';
import 'package:crud/views/HomePage.dart';
import 'package:crud/views/RegisterPage.dart';
import 'package:crud/views/add_page.dart';
import 'package:crud/views/listviewuser.dart';
import 'package:crud/views/todo_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SpringBoot Crud',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     home: TodoListPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
     //    "/ListUsers":(context) => ListUsers(),
    //    "/RegisterPage":(context) => RegisterPage(),
       



      },
    );
  }
}


