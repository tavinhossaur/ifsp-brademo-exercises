import 'package:flutter/material.dart';

class CheckBoxCard extends StatelessWidget {
  final DateTime dateTime;
  final Function(DateTime) onTaskCompleted;

  const CheckBoxCard({super.key, required this.dateTime, required this.onTaskCompleted});

  @override
  Widget build(BuildContext context) {
    String formattedDate = "Task ${dateTime.toString().split(' ').join('\n')}";

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      color: Colors.amberAccent,
      child: ListTile(
        title: Text(
          formattedDate,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
          icon: Icon(Icons.check_box_outline_blank),
          onPressed: () => onTaskCompleted(dateTime),
        ),
      ),
    );
  }
}