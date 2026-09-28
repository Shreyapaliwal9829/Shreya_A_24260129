import 'dart:convert';
void main() {
  Map<String, dynamic> student = {
    'name': 'Shreya', 'rollNo': 101, 'course': 'BCA'
  };
  student.forEach((key, value) => print('$key : $value'));
}