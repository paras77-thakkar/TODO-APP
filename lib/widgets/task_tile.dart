import 'package:flutter/material.dart';
import 'task_list.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) CheckboxCallback;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.CheckboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: CheckboxCallback,
      ),
    );
  }
}
