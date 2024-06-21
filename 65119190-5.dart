addStudent(List<String> students, String name) {
  students.add(name);
  print("Student '$name' added.");
}

removeStudent(List<String> students, String name) {
  if (students.contains(name)) {
    students.remove(name);
    print("Student '$name' removed.");
  } else {
    print("Student '$name' not found.");
  }
}

displayStudents(List<String> students) {
  if (students.isEmpty) {
    print("No students in the list.");
  } else {
    print("Student names:");
    for (var name in students) {
      print(name);
    }
  }
}

void main() {
  List<String> students = [];

  print('\n------Add------');
  addStudent(students, "Chanankorn");
  addStudent(students, "Jonksuk");
  addStudent(students, "Sirirat");
  addStudent(students, "Birawit");
  print('---------------\n');

  print('\n----Display----');
  displayStudents(students);
  print('----------------\n');

  print('\n-----Remove case not found-----');
  removeStudent(students, "CJ");
  print('----------------\n');

  print('\n----Display----');
  displayStudents(students);
  print('----------------\n');

  print('\n-----Remove Success-----');
  removeStudent(students, "Jonksuk");
  print('----------------\n');
  
  print('\n----Display----');
  displayStudents(students);
  print('----------------\n');
}
