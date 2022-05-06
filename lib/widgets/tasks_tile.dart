// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  String taskTitle;
  bool isChecked;
  TasksTile(this.taskTitle, this.isChecked);
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;
  void toggleCheckedState(bool checkboxState) {
    setState(() {
      widget.isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decoration: widget.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        isChecked: widget.isChecked,
        checkBoxCallback: toggleCheckedState,
      ),
      // trailing: Checkbox(
      //   onChanged: (bool? value) {
      //     setState(() {
      //       isChecked = value!;
      //     });
      //   },
      //   value: isChecked,
      // ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  bool isChecked = false;
  Function(bool value) checkBoxCallback;

  TaskCheckbox({required this.isChecked, required this.checkBoxCallback});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (value) {
        checkBoxCallback(value!);
      },
      value: isChecked,
    );
  }
}
