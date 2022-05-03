// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 30.0,
        ),
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 35.0,
                color: Colors.lightBlueAccent,
              ),
              backgroundColor: Colors.white,
              radius: 30.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Todo List',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
