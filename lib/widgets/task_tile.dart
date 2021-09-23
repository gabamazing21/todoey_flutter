import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final bool? isChecked;
  final String title;
  final Function(bool?)? checkBoxCallBack;

  TaskTile(
      {this.isChecked, required this.title, required this.checkBoxCallBack});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          decoration:
              widget.isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: widget.isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: widget.checkBoxCallBack,
      ),
    );
  }
}
