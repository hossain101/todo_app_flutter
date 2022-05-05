import 'package:flutter/material.dart';



class TasksTile extends StatelessWidget {
  const TasksTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
      ),
      trailing: Checkbox(
        onChanged: (value) => {},
        value: true,
      ),
    );
  }
}
