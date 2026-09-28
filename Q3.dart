import 'dart:convert';
void main() {
  Map<String,dynamic> student={'name':'Shreya','rollNo':101,'course':'BCA'};
  String jsonString=jsonEncode(student);
  print(jsonString);
  Map<String,dynamic> map=jsonDecode(jsonString);
  print(map);
}