import 'person.dart';

void main() {
  Student s1 = Student(2, 'Ahmed', Gender.Male);
  s1.display();

  Doctor d1 = Doctor(3000, 'Ahmed', Gender.Female);
  d1.display();
}
