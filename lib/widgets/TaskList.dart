import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo/task_data.dart';
import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, int index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (bool newValue) {
              // setState(
              //   () {
              //     widget.tasks[index].toggleDone();
taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
