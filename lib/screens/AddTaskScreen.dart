import 'package:flutter/material.dart';
import 'package:todo/Task.dart';
import 'package:provider/provider.dart';
import 'package:todo/task_data.dart';

String newTaskTitle;
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
          child: Container(
            padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',textAlign: TextAlign.center,style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue[300],
            ),),
             TextField(
               onChanged: (newText){
                 newTaskTitle = newText;
               },
               autofocus: true,
               textAlign: TextAlign.center,
             ),
             FlatButton(
               onPressed: () {
              Provider.of<TaskData>(context).addTask(newTaskTitle);
               Navigator.pop(context);
               },
               color: Colors.blue[300],
               child: Text('Add',style: TextStyle(color: Colors.white),),
             ),
          ],
        ),
      ),
    );
  }
}