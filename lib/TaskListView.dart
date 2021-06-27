import 'package:flutter/material.dart';
import 'ListTileWidget.dart';
import 'Task.dart';

class TaskListView extends StatefulWidget {

  TaskListView(this.task);

  final List<Task> task;

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){

      return TaskTile(task: widget.task[index].name, boxChecked: widget.task[index].isDone, taskValueOnChecked: (taskValueChecked){
        setState(() {
          widget.task[index].changeDone();
        });
      });
    },
      itemCount: widget.task.length,
    );
  }
}