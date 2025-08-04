import 'person.dart';

void main() {
  // create an object
  Person p1 = Person.fromJson({'name': 'Ahmed', 'age': 20, 'gender': 'Male'});

  p1.display();
}
