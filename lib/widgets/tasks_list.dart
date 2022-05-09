// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:todo_app_flutter/models/task_data.dart';
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
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
                taskData.tasks[index].name, taskData.tasks[index].isDone);
          },
          itemCount: taskData.taskCount,
        );
      },
      //child:
    );
  }
}
