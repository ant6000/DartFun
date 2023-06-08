class Student{
  int id;
  String name;
  String phone;
  Address address;

  Student(this.id,this.name,this.phone,this.address);
}

class Address{
  int id;
  String houseNo;
  String thana;
  String district;
  String divission;

  Address(this.id,this.houseNo,this.thana,this.district,this.divission);
}

abstract class BaseMethods{
  void addStudents(Student student);
  void showStudents();
}

class studentRepo implements BaseMethods{
  List<Student> studentList = [];
  @override
  void addStudents(Student student) {
    studentList.add(student);
    print('Student Number ${studentList.length} is added');
  }

  @override
  void showStudents() {
    for (var element in studentList) {
      print('Studetn ID: ${element.id}');
      print('Studetn Name: ${element.name}');
      print('Studetn Phone: ${element.phone}');
      print('Studetn Address-------->');
      print('House No; ${element.address.houseNo},Thana: ${element.address.thana}, District: ${element.address.district}, Divission: ${element.address.divission}');
      print('-----------');
    }
  }
}

class StudentController{
  BaseMethods methods;

  StudentController(this.methods);

  void addStudents(Student student){
    methods.addStudents(student);
  }

  void showStudents(){
    methods.showStudents();
  }
}
void main(List<String> args) {
  StudentController controller = StudentController(studentRepo());
  controller.addStudents(Student(1, "Rahim", "12345", Address(1, 'B-12', "Dhanmondi", "Dhaka", "Dhaka")));
  controller.addStudents(Student(2, "Karim", "12345", Address(2, 'B-15', "Dhanmondi", "Dhaka", "Dhaka")));
  controller.addStudents(Student(3, "Jamal", "12345", Address(1, 'B-10', "Dhanmondi", "Dhaka", "Dhaka")));
  controller.addStudents(Student(4, "Salam", "12345", Address(4, 'B-45', "Dhanmondi", "Dhaka", "Dhaka")));
  controller.addStudents(Student(5, "Manik", "12345", Address(3, 'C-11', "Dhanmondi", "Dhaka", "Dhaka")));

  controller.showStudents();
}