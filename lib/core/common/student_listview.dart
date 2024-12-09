import 'package:flutter/material.dart';
import 'package:listview_class/model/student.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key, required this.lstStudents});

  final List<Student> lstStudents;

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  late List<Student> students;

  @override
  void initState() {
    super.initState();
    students = widget.lstStudents;
  }

  void _deleteStudent(int index) {
    setState(() {
      students.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('${students[index].fname} ${students[index].lname}'),
            subtitle: Text(students[index].city),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: students[index],
              );
            },
            trailing: IconButton(
              onPressed: () => _deleteStudent(index),
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}