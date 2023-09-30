import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data , child){
        return  ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) {
                data.updateTask(task);
              },
              longPressCallback: (){
                data.deleteTask(task);
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
