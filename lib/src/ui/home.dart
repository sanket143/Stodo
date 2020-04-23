import 'package:flutter/material.dart';
import 'package:stodo/src/models/task_model.dart';
import 'package:stodo/src/blocs/tasks_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    bloc.fetchAllTasks();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 250,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hey Sanket!",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "How are you doing so far?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          )
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
