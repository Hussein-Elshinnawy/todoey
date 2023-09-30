import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;
  //
  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              Consumer<Data>(
                builder: (context, data, _) => TextButton(
                  onPressed: () {
                    data.addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                  ),
                  child: Text(
                    'add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
