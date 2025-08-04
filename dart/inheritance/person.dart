enum Gender { Male, Female }

class Person {
  String name;
  Gender gender;

  Person(this.name, this.gender);

  display() {
    print("Name: $name, Gender: $gender");
  }
}

class Student extends Person {
  int? grade;

  Student(this.grade, super.name, super.gender);
  // Student(this.grade, String name, String gender) : super(name, gender);

  @override
  display() {
    super.display();
    print("Name: $name, Gender: $gender, Grade: $grade");
  }
}

class Doctor extends Person {
  double? salary;

  Doctor(this.salary, super.name, super.gender);

  @override
  display() {
    print("Name: $name, Gender: $gender, Salary: $salary");
  }
}
