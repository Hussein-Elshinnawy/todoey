import 'package:flutter/material.dart';
import 'package:todoey/screens/taskscreen.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';
import 'models/task_data.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // List<Task> tasks = [
  //   Task(name: 'buy milk'),
  //   Task(name: 'buy eggs'),
  //   Task(name: 'buy bread'),
  // ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create:(context){
        return Data();
      },
      child: MaterialApp(
        home: TasksScreen(),

      ),
    );
  }
}

