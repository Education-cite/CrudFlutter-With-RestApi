import 'dart:convert';
import 'dart:ffi';

import 'package:crud/views/add_page.dart';
import 'package:crud/views/services/todo_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//other new------------
class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  bool isloading = true;
  List items = [];

  @override
  void initState() {
    fetchTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo_List App"),
      ),
      body: Visibility(
        visible: isloading,
        child: Center(
          child: CircularProgressIndicator(),
        ),
        replacement: RefreshIndicator(
          onRefresh: fetchTodo,
          child: Visibility(
            visible: items.isNotEmpty,
            replacement: Center(
              child: Text(
                'No Todo item',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index] as Map;
                  final id = item['_id'] as String;
                  return Card(
                    child: ListTile(
                      // title: Text(item.toString()),
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(item['title']),
                      subtitle: Text(item['description']),
                      trailing: PopupMenuButton(onSelected: (value) {
                        if (value == 'edit') {
                          NavigatetoEditPage(item);
                        } else if (value == 'delete') {
                          deleteById(id);
                        }
                      }, itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: Text("Edit"),
                            value: 'edit',
                          ),
                          PopupMenuItem(
                            child: Text("Delete"),
                            value: 'delete',
                          ),
                        ];
                      }),
                    ),
                  );
                }),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: NavigatetoaddPage, label: Text("Add Todo")),
    );
  }

  Future<void> deleteById(String id) async {
    final issuccess = await TodoService.deleteById(id);
    if (issuccess) {
      final filtered = items.where((element) => element['_id'] != id).toList();
      setState(() {
        items = filtered;
      });
      print('Deleted  Successfully');
    } else {
      print('Deleted  failed');
    }
  }

  Future<void> fetchTodo() async {
    final response = await TodoService.fetchTodo();
    if (response != null) {
      setState(() {
        items = response;
      });
      print('Get Data Success');
    } else {
      print('Get Data failed');
    }

    setState(() {
      isloading = false;
    });
  }

  Future<void> NavigatetoEditPage(Map item) async {
    final route =
        MaterialPageRoute(builder: (context) => AddTodoPage(todo: item));
    await Navigator.push(context, route);
    setState(() {
      isloading = true;
    });

    fetchTodo();
  }

  Future<void> NavigatetoaddPage() async {
    final route = MaterialPageRoute(builder: (context) => AddTodoPage());
    await Navigator.push(context, route);

    setState(() {
      isloading = true;
    });

    fetchTodo();
  }
}
