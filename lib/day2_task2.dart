// Stucent Base Class
class Student {
  int? id, phone;
  String? name, email;
  Address? address;
  Student(this.id, this.phone, this.name, this.email, this.address);
}

// Address is a model class
class Address {
  int? id, houseNo;
  String? thana, district, divission;
  Address(this.id,this.houseNo, this.thana, this.district, this.divission);
}

// Abstract class
abstract class StudentCreation {
  void addStudent(Student student);
}

//Implementation of studentCreation abstact class
class StudentCreattionImp implements StudentCreation {
  List<Student> studentObj = [];
  @override
  void addStudent(Student student) {
    studentObj.add(student);
    print('Student Create done in ${studentObj.length}');
  }
}

// Dependency class
class Worker {
  StudentCreation studentCreation;
  Worker(this.studentCreation);

  void addStudent(Student model) {
    studentCreation.addStudent(model);
  }
}

void main() {
  final worker = Worker(StudentCreattionImp());
  worker.addStudent(
      Student(10, 01863837230, 'antor', 'ant@gmail.com', (Address(1001, 456, 'Begunjonj', 'Noakhali', 'Chottogram'))));
  worker.addStudent(
      Student(10, 01863837230, 'antor', 'ant@gmail.com', (Address(1001, 456, 'Begunjonj', 'Noakhali', 'Chottogram'))));
}
