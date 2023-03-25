import 'dart:convert';

import 'package:crud/views/services/todo_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//other new------------
class AddTodoPage extends StatefulWidget {
  final Map? todo;
  const AddTodoPage({super.key, this.todo});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isEdit = false;

  @override
  void initState() {
    final todo = widget.todo;
    if (todo != null) {
      isEdit = true;
      final title = todo['title'];
      final description = todo['description'];
      titleController.text = title;
      descriptionController.text = description;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEdit ? "Edit Todo" : "Add Todo",
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        TextField(
          controller: titleController,
          decoration: InputDecoration(hintText: 'Title'),
        ),
        TextField(
          controller: descriptionController,
          decoration: InputDecoration(hintText: 'Description'),
          keyboardType: TextInputType.multiline,
          minLines: 5,
          maxLines: 8,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: isEdit ? updateData : submitData,
            child: Text(
              isEdit ? 'Update' : 'Submit',
            ))
      ]),
    );
  }

  Future<void> updateData() async {
    final title = titleController.text;
    final description = descriptionController.text;
    final todo = widget.todo;
    if (todo == null) {
      print("you do not call update without todo data");
      return;
    }
    final id = todo['_id'];

    final issuccess = await TodoService.updateData(id, body);

    if (issuccess) {
      print('updated Success');
    } else {
      print('updated failed');
    }
  }

  Future<void> submitData() async {
    final issuccess = await TodoService.submitData(body);

    if (issuccess) {
      titleController.text = '';
      descriptionController.text = '';

      print('created Success');
    } else {
      print('created failed');
    }
  }

  Map get body {
    final title = titleController.text;
    final description = descriptionController.text;

    return {"title": title, "description": description, "is_completed": false};
  }
}
