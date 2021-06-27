import 'package:flutter/material.dart';
import 'AddNewTask.dart';
import 'constants.dart';
import 'TaskListView.dart';
import 'Task.dart';


class HomeScreen extends StatefulWidget {

  HomeScreen({this.inputValue});

  final inputValue;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Task> task = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context) =>
              NewTaskAdder( (taskName){
                setState(() {
                  task.add(Task(name: taskName),
                  );
                },
                );
                Navigator.pop(context);
              }
              ),);
        },
        elevation: 5,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: <Widget>[
                  CircleAvatar(
                    child:
                    Icon(Icons.list, size: 30.0, color: Colors.blueAccent),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 20.0),
                  Text('Todoey',
                    style: kTodoeyTextStyle,
                  ),
                  Text('${task.length} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: kTaskViewContainerStyle,
              child: TaskListView(task),
            ),
          ),
        ],
      ),
    );
  }
}
