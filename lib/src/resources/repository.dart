import 'dart:async';
import 'tasks_extractor.dart';
import '../models/task_model.dart';

class Repository {
  final taskExtractor = TasksExtractor();

  Future<TaskListModel> fetchAllTasks() => taskExtractor.getTaskList();
}