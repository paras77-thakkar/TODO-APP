import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data_provider.dart';
import 'Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskDataProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
