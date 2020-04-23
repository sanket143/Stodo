import 'package:stodo/src/models/task_model.dart';

class TasksExtractor {

  Future<TaskListModel> getTaskList() async {
    print("ENTERED");

    List dummyData = [
      {
        "isComplete": false,
        "group": "personal",
        "period": "Today",
        "color": "crimson",
        "title": "Do something",
        "taskId": 1
      },
      {
        "isComplete": false,
        "group": "personal",
        "period": "Today",
        "color": "crimson",
        "title": "Do anything",
        "taskId": 2
      },
      {
        "isComplete": false,
        "group": "personal",
        "period": "Today",
        "color": "crimson",
        "title": "Do anything",
        "taskId": 3
      },
    ];
    
    return TaskListModel.fromJson(dummyData);
  }
}