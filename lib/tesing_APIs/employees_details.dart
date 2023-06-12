import 'package:flutter/material.dart';

class EmployeesDetailsScreen extends StatefulWidget {
  Map<String, dynamic> data;
  EmployeesDetailsScreen({
    required this.data,
    super.key,
  });

  @override
  State<EmployeesDetailsScreen> createState() => _EmployeesDetailsScreenState();
}

class _EmployeesDetailsScreenState extends State<EmployeesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
