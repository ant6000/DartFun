class User {
  String? name;
  String? password;

  User(this.name, this.password);
}

abstract class UserCeration {
  void addUser(User usermodel);
  void checkPass(String password);
  void findUser(User suermodel);
}

class Usercreating implements UserCeration {
  List<User> userList = [];

  @override
  void addUser(User usermodel) {
    userList.add(usermodel);
  }

  @override
  void checkPass(String password) {

    bool isCap = false;
    bool isLow = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i].codeUnits.first >= 65 &&
          password[i].codeUnits.first <= 123) {
        isCap = true;
      }
      if (password[i].codeUnits.first >= 97 &&
          password[i].codeUnits.first <= 122) {}
      isLow = true;

      if (isCap == true && isLow == true) {
        print('Accepted');
      } else {
        print('Not Accepted');
      }
    }
  }

  @override
  void findUser(User usermodel) {

    final checkUser = userList.indexWhere((element) =>
        element.name == usermodel.name &&
        element.password == usermodel.password);

    if (checkUser == -1) {
      print('wrong info given');
    } else {
      print('wrong info givenn');
    }
  }
}

class UsercreatingforAdmin implements UserCeration {
  List<User> adminList = [];

  @override
  void addUser(User usermodel) {
    adminList.add(usermodel);
  }

  @override
  void checkPass(String password) {

    bool isCap = false;
    bool isLow = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i].codeUnits.first >= 65 &&
          password[i].codeUnits.first <= 123) {
        isCap = true;
      }
      if (password[i].codeUnits.first >= 97 &&
          password[i].codeUnits.first <= 122) {}
      isLow = true;

      if (isCap == true && isLow == true) {
        print('Accepted');
      } else {
        print('Not Accepted');
      }
    }
  }

  @override
  void findUser(User usermodel) {

    final checkUser = adminList.indexWhere((element) =>
        element.name == usermodel.name &&
        element.password == usermodel.password);

    if (checkUser == -1) {
      print('wrong info given');
    } else {
      print('wrong info givenn');
    }
  }
}

class WorkDone {
  UserCeration userceration;
  UserCeration adminCreation;
  WorkDone(this.userceration, this.adminCreation);

  void addUser(User model) {
    userceration.addUser(model);
  }

  void checkUser(User model) {
    userceration.findUser(model);
  }

  void checkPassword(String passString) {
    userceration.checkPass(passString);
  }

  void addUserAdmin(User model) {
    adminCreation.addUser(model);
  }

  void checkUserAdmin(User model) {
    adminCreation.findUser(model);
  }

  void checkPasswordAdmin(String passString) {
    adminCreation.checkPass(passString);
  }
}

void main() {
  final workDone = WorkDone(Usercreating(), UsercreatingforAdmin());
  workDone.addUser(User('antor', '25'));
}
