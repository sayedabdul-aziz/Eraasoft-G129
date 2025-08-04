void main() {
  display(1, 'Ahmed', 'Male');
  display1(1, 'Ahmed');
  display2(name: 'Amira', gender: 'Female', id: 1);
  display3(name: 'Amira', id: 1);
  display4(1, name: 'Amira', gender: 'Female');
}

//1) Positional Parameters (required, ordered)
void display(int id, String name, String gender) {
  print("Id: $id, Name: $name, Gender: $gender");
}

//2) Positional Parameters (required and optional, ordered)
void display1(int id, String name, [String gender = "Male"]) {
  print("Id: $id, Name: $name, Gender: $gender");
}

//3) Named Parameters (required, not-ordered)
void display2({required int id, required String name, required String gender}) {
  print("Id: $id, Name: $name, Gender: $gender");
}

//4) Named Parameters (required and optional, not-ordered)
void display3({required int id, required String name, String gender = "Male"}) {
  print("Id: $id, Name: $name, Gender: $gender");
}

//5) Mixed Parameters
void display4(int id, {required String name, required String gender}) {
  print("Id: $id, Name: $name, Gender: $gender");
}
