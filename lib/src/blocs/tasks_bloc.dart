import 'package:rxdart/rxdart.dart';
import '../resources/repository.dart';
import '../models/task_model.dart';

class TasksBloc {
  final _repository = Repository();
  final _taskExtractor = PublishSubject<TaskListModel>();

  Observable<TaskListModel> get allTasks => _taskExtractor.stream;

  fetchAllTasks() async {
    TaskListModel taskListModel = await _repository.fetchAllTasks();
    _taskExtractor.sink.add(taskListModel);
  }

  dispose() {
    _taskExtractor.close();
  }
}

final bloc = TasksBloc();