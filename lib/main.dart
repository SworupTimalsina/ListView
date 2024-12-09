import 'package:flutter/material.dart';
import 'package:listview_class/view/card_view.dart';
import 'package:listview_class/view/student_details_view.dart';
import 'package:listview_class/view/student_output_view.dart';
import 'package:listview_class/view/student_individual_detail_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const CardView(),
        '/output': (context) => const StudentOutputView(),
        '/details': (context) => const StudentSingleDetailView(),
      },
    ),
  );
}