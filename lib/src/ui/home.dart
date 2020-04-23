import 'package:flutter/material.dart';
import 'package:stodo/src/models/task_model.dart';
import 'package:stodo/src/blocs/tasks_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    bloc.fetchAllTasks();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey Sanket!"),
        elevation: 0,
      ),
      body: StreamBuilder(
        stream: bloc.allTasks,
        builder: (context, AsyncSnapshot<TaskListModel> snapshot){
          if(snapshot.hasData){
            return buildList(snapshot);
          } else if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }

          return Center(child: CircularProgressIndicator());
        }
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
