import 'package:flutter/material.dart';
import 'package:flutter_todo/constants.dart';
import 'package:provider/provider.dart';
import 'TaskData.dart';

String taskName;

class NewTaskAdder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF757575),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
                ),
                TextField(
                  onChanged: (newValue){
                    taskName = newValue;
                  },
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: (){
                    Provider.of<TaskData>(context, listen: false).addTask(taskName);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Add Task',
                      style: kAddTaskButtonTextStyle,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ),
          decoration: kAddTaskContainerStyle,
        ),
      ),
    );
  }
}
