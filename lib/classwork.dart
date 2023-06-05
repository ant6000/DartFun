//// User Model
class UserModel {
  String userName;
  String psssword;

  UserModel(this.userName, this.psssword);
}

////UserCreate Class
abstract class UserCreation {
  void addUser(UserModel userModel);

  void checkPasswordValid(String password);

  void findUser(UserModel userModel);
}

////UserCreation Implement class
class UserCreationImp implements UserCreation {
  List<UserModel> userList = [];
  @override
  void addUser(UserModel userModel) {
    // TODO: implement addUser

    userList.add(userModel);
    print("User Create done in ${userList.length}");
  }

  @override
  void checkPasswordValid(String password) {
    bool isCap = false;
    bool isLow = false;
    // TODO: implement checkPasswordValid
    for (int i = 0; i < password.length; i++) {
      if (password[i].codeUnits.first >= 65 &&
          password[i].codeUnits.first <= 90) {
        isCap = true;
      }
      if (password[i].codeUnits.first >= 97 &&
          password[i].codeUnits.first <= 122) {
        isLow = true;
      }
    }
    if (isCap == true && isLow == true) {
      print("Accept");
    } else {
      print('Not Accepted');
    }
  }

  @override
  void findUser(UserModel userModel) {
    // TODO: implement findUser
    final checkUser = userList.indexWhere((element) =>
        element.userName == userModel.userName &&
        element.psssword == userModel.psssword);
    if (checkUser == -1) {
      print('Wrong Info Given');
    } else {
      print("User Authenticated");
    }
  }
}


class AdminCreationImp implements UserCreation{
  List<UserModel> adminList = [];
  @override
  void addUser(UserModel userModel) {
    // TODO: implement addUser
    adminList.add(userModel);
    print("Admin Create done in ${adminList.length}");
  }

  @override
  void checkPasswordValid(String password) {
    // TODO: implement checkPasswordValid

    bool isCap = false;
    bool isLow = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i].codeUnits.first >= 65 &&
          password[i].codeUnits.first <= 90) {
        isCap = true;
      }
      if (password[i].codeUnits.first >= 97 &&
          password[i].codeUnits.first <= 122) {
        isLow = true;
      }
    }
    if (isCap == true && isLow == true) {
      print("Accept");
    } else {
      print('Not Accepted');
    }
  }

  @override
  void findUser(UserModel userModel) {
    // TODO: implement findUser

    final checkUser = adminList.indexWhere((element) =>
    element.userName == userModel.userName &&
        element.psssword == userModel.psssword);
    if (checkUser == -1) {
      print('Wrong Info Given');
    } else {
      print("User Authenticated");
    }
  }

}

class WorkDone {
  UserCreation user;
  UserCreation admin;


  WorkDone(this.user,this.admin);

  void addUser(UserModel model) {
    user.addUser(model);
  }
  void addAdmin(UserModel model){
    admin.addUser(model);
  }

  void checkUser(UserModel userModel) {
   user.findUser(userModel);
  }

  void checkAdmin(UserModel userModel) {
    admin.findUser(userModel);
  }


  void checkPassword(String value) {
    user.checkPasswordValid(value);
  }
  void checkAdminPassword(String value) {
    admin.checkPasswordValid(value);
  }


}

void main() {
  final workDone = WorkDone(UserCreationImp(),AdminCreationImp());

  workDone.addUser(UserModel('Jamal', '123456'));
  workDone.addUser(UserModel('Kamal', '12345'));
  workDone.addAdmin(UserModel('Kamal', '123457'));
  workDone.addAdmin(UserModel('Kamal', '12345'));

//
  workDone.checkUser(UserModel('Rahim', 'psssword'));
  workDone.checkUser(UserModel('Jamal', '123456'));
  workDone.checkUser(UserModel('Jamal', '12456'));
  workDone.checkPassword('pass');
  workDone.checkAdminPassword('value');
}
