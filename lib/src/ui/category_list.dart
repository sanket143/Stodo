import 'package:flutter/material.dart';
import 'package:stodo/src/blocs/tasks_bloc.dart';
import 'package:stodo/src/models/task_model.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllTasks();
    return StreamBuilder(
      stream: bloc.allTasks,
      builder: (context, AsyncSnapshot<TaskListModel> snapshot){
        if (snapshot.hasData) {
          return buildList(snapshot);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget buildList(AsyncSnapshot<TaskListModel> snapshot){
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: snapshot.data.tasks.length,
        itemBuilder: (BuildContext context, int index){
          return Task(snapshot.data.tasks[index]);
        },
      ),
    );
  }
}

class Task extends StatelessWidget {
  final TaskModel task;
  
  Task(this.task);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(task.title),
          Checkbox(
            value: task.isComplete,
            onChanged: (val){
              print(task.isComplete);
              task.toggleStatus();
            }
          )
        ],
      ),
    );
  }
}