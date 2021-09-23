import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/flat_button.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskcallback;
  AddTaskScreen({required this.addTaskcallback});

  late String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                task = value;
              },
            ),
            RectangularButton(
              colors: Colors.lightBlueAccent,
              buttonTitle: 'Add',
              onPressed: () {
                addTaskcallback(task);
              },
            ),
          ],
        ),
      ),
    );
  }
}
