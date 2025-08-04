class Person {
  // attributes
  String? name;
  int? age;
  String? gender;

  // constructor

  Person({required this.name, required this.age, required this.gender});
  
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age'], gender: json['gender']);
  }

  // methods
  void display() {
    print("Name: $name, Age: $age, Gender: $gender");
  }

  void display1([String? name]) {
    print("Name: $name, Age: $age, Gender: $gender");
  }
}
