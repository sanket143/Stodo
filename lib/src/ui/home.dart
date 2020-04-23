import 'package:flutter/material.dart';
import 'package:stodo/src/models/task_model.dart';
import 'package:stodo/src/blocs/tasks_bloc.dart';
import 'package:stodo/src/ui/header.dart';
import 'package:stodo/src/ui/show_lists.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    bloc.fetchAllTasks();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Header(),
          TaskCategoryList()
        ],
      )
    );
  }

  Widget buildList(AsyncSnapshot<TaskListModel> snapshot){
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: snapshot.data.tasks.length,
        itemBuilder: (BuildContext context, int index){
          return new Text(snapshot.data.tasks[index].title);
        },
      ),
    );
  }
}
