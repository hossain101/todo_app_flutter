// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:todo_app_flutter/screens/tasks_screen.dart';
import 'package:todo_app_flutter/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  TasksList(this.tasks);
  List<Task> tasks;
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(widget.tasks[index].name, widget.tasks[index].isDone);
      },
      itemCount:widget. tasks.length,
    );
  }
}
