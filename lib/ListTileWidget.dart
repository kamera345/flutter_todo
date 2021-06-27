import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final task;
  final boxChecked;
  final Function taskValueOnChecked;

  TaskTile({this.task, this.boxChecked, this.taskValueOnChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task, style: TextStyle(
        decoration: boxChecked ? TextDecoration.lineThrough: null,
      ),),
      trailing: Checkbox(
        value: boxChecked,
        onChanged: taskValueOnChecked,
      ),
    );
  }
}
