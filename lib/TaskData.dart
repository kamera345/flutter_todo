import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _task = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
  ];

  int get taskNumber {

    return _task.length;
  }

  UnmodifiableListView<Task> get task {

    return UnmodifiableListView(_task);

  }

  void updateTask(Task task){
    task.changeDone();
    notifyListeners();
  }

  void addTask(String taskName){

    final tasks = Task(name: taskName);
    _task.add(tasks);
    notifyListeners();

  }

  void deleteTask(Task task){
    _task.remove(task);
    notifyListeners();
  }
}