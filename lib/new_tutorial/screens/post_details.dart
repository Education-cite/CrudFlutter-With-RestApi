

import 'package:crud/new_tutorial/HTTPHelper.dart';
import 'package:crud/new_tutorial/screens/edit_post.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {

  PostDetails(this.itemId, {Key? key}) : super(key: key) {
    _futurePost = HTTPHelper().getItem(itemId);
  }

  String itemId;
  late Future<Map> _futurePost;
  late Map post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => EditPost(post)));
          }, icon: Icon(Icons.edit)),
          IconButton(onPressed: () async{
            //Delete
            bool deleted=await HTTPHelper().deleteItem(itemId);

            if(deleted)
              {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Post deleted')));
              }
            else
              {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Failed to delete')));
              }
          }, icon: Icon(Icons.delete)),
        ],
      ),
      body: FutureBuilder<Map>(
        future: _futurePost,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Some error occurred ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            post = snapshot.data!;

            return Column(
              children: [
                Text(
                  '${post['email']}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${post['body']}'),
              ],
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}