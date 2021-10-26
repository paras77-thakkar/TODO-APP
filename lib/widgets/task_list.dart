import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data_provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                CheckboxCallback: (checkedBoxState) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                longPressCallback: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
