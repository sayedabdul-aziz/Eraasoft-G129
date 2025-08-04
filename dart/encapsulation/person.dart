class Person {
  //private attributes
  String? name;
  int? _age;
  String? gender;

  set age(int age) {
    if (age > 0) {
      this._age = age;
    } else {
      print("Invalid age");
    }
  }

  int get age => this._age ?? 0;
}
