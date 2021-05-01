
import 'package:flutter/material.dart';

class Student {
    List <Student> list=[];
    final int id;
    final String firstName;
    final String lastName;
    final String department;

    Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.department
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        department: json['department']
    );
  }

    @override
  String toString() {
    return 'Student{list: $list, id: $id, firstName: $firstName, lastName: $lastName, department: $department}';
  }
}
