import 'package:stodo/src/models/task_model.dart';

class TasksExtractor {
  List dummyData = [
    {
      "isComplete": false,
      "group": "personal",
      "period": "Today",
      "color": "crimson",
      "title": "Do something",
      "taskId": 0
    },
    {
      "isComplete": false,
      "group": "personal",
      "period": "Today",
      "color": "crimson",
      "title": "Do anything",
      "taskId": 1
    },
    {
      "isComplete": true,
      "group": "personal",
      "period": "Today",
      "color": "crimson",
      "title": "Do anything",
      "taskId": 2
    },
  ];

  Future<TaskListModel> getTaskList() async {
    return TaskListModel.fromJson(dummyData);
  }

  Future<void> toggleTaskCompletion(TaskModel task) async {
    dummyData[task.taskId]["isComplete"] = !dummyData[task.taskId]["isComplete"];
  }
}