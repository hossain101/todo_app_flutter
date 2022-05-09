import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Finish this application', isDone: false),
    Task(name: 'Finish Comuputational Intelligence', isDone: false),
    Task(name: 'Finish Finish software construction', isDone: false),
    Task(name: 'Finish Realtime software engineering yoo', isDone: false),
  ];
  int get taskCount {
    return _tasks.length;
  }

  //UnmodifiableListView tasks = UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    _tasks.add(
      Task(name: newTaskTitle, isDone: false),
    );
    notifyListeners();
  }
}
