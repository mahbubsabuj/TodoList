import 'package:flutter/foundation.dart';
import 'package:todo/Task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: 'Go to the University'),
    Task(name: 'Eat your Launch On time'),
    Task(name: 'Go for a Walk'),
    Task(name: 'Go back to Home'),
    Task(name: 'Get some Rest'),
    Task(name: 'Practice Flutter At Least 3 hours'),
    Task(name: 'Eat Your Dinner before 10pm'),
    Task(name: 'Finish Your Prayer'),
    Task(name: 'Go to sleep before 12am'),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
void updateTask(Task task){
  task.toggleDone();
  notifyListeners();
}


  int get taskCount{
    return _tasks.length;
  }
}