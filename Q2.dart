class Student {
  String name; int rollNo; String course;
  Student(this.name, this.rollNo, this.course);
  Map<String,dynamic> toMap() =>
      {'name':name,'rollNo':rollNo,'course':course};
  factory Student.fromMap(Map<String,dynamic> map) =>
      Student(map['name'],map['rollNo'],map['course']);
}
void main() {
  Student s=Student('Shreya',101,'BCA');
  Map m=s.toMap();
  print(m);
  Student s2=Student.fromMap(m);
  print('${s2.name} ${s2.rollNo} ${s2.course}');
}