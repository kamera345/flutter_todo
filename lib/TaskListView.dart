import 'package:flutter/material.dart';
import 'ListTileWidget.dart';
import 'TaskData.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatefulWidget {

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){

          final tasks = taskData.task[index];

          return TaskTile(task: tasks.name,
              boxChecked: tasks.isDone,
              taskValueOnChecked: (taskValueChecked){
                taskData.updateTask(tasks);
              },
             longPressed: (){
                taskData.deleteTask(tasks);
            },
          );
        },
          itemCount: taskData.taskNumber,
        );
      },
    );
  }
}