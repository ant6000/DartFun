class User {
  String? userName;
  String? password;
  User(this.userName, this.password);
}

class Authentication {
  List<User> userList = [];
  // Authentication() {
  //   userList = [];
  // }

  void addUser(User user) {
    userList.add(user);
  }
   bool checkUser(String username, String password) {
    for (User user in userList) {
      if (user.userName == username && user.password == password) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  var auth = Authentication();
  var user1 = User('johnsmith', 'password123');
  var user2 = User('hello', 'password123');

  auth.addUser(user1);
  auth.addUser(user2);

    // Check if a given user exists
  String username = "johnsmith";
  String password = "password123";
  bool isUserValid = auth.checkUser(username, password);

  if (isUserValid) {
    print("Authentication successful!");
  } else {
    print("Invalid credentials.");
  }
}
