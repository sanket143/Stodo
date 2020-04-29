import 'dart:async';
import 'tasks_extractor.dart';
import '../models/task_model.dart';

class Repository {
  final taskExtractor = TasksExtractor();

  Future<TaskListModel> fetchAllTasks() => taskExtractor.getTaskList();
  Future<void> toggleTask(TaskModel task) => taskExtractor.toggleTaskCompletion(task);
}