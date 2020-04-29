class TaskListModel {
  List<TaskModel> _tasks;

  List<TaskModel> get tasks => _tasks;
  
  TaskListModel.fromJson(List parsedJson){
    List<TaskModel> temp = [];

    for(int i = 0; i < parsedJson.length; i++){
      TaskModel task = TaskModel(parsedJson[i]);
      temp.add(task);
    }

    _tasks = temp;
  }
}

class TaskModel {
  bool _isComplete; // Done or not

  String _group; // School, Work, Sport, Health
  String _period; // Today, Week, Month
  String _color; // Colors of course
  String _title; // Task

  int _taskId; // Task Number

  bool get isComplete => _isComplete;
  String get group => _group;
  String get period => _period;
  String get color => _color;
  String get title => _title;
  int get taskId => _taskId;

  TaskModel(task){
    _isComplete = task['isComplete'];
    _group = task['group'];
    _period = task['period'];
    _color = task['color'];
    _taskId = task['taskId'];
    _title = task['title'];
  }

  toggleStatus(){
    _isComplete = !_isComplete;
  }
}