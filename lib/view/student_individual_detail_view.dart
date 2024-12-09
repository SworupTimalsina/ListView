import 'package:flutter/material.dart';
import 'package:listview_class/model/student.dart';

class StudentSingleDetailView extends StatelessWidget {
  const StudentSingleDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Student student =
    ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      appBar: AppBar(
        title: Text('${student.fname} ${student.lname}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${student.fname} ${student.lname}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('City: ${student.city}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}