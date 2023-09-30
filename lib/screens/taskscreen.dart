import 'package:flutter/material.dart';
import 'package:todoey/screens/add_taskscreen.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/screens/taskscreen.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/main.dart';
import 'package:todoey/models/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // List<Task> tasks = [
  //   Task(name: 'buy milk'),
  //   Task(name: 'buy eggs'),
  //   Task(name: 'buy bread'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
                // setState(() {
                //   tasks.add(Task(name: newTaskTitle));
                // });
                // Provider.of<Data>(context).updateList(Task(name: newTaskTitle));
                // Navigator.pop(context);
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<Data>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
