
class User {
  String username='';
  String password='';
  // int birthyear;

    User(String username, String password){
      username = V_username(username);
      password = V_password(password);
      // birthyear = V_birthyear(birthyear);

    }


    //getters

    String get getUsername {
      return username;
    }

    String get getPassword {
      return password;
    }

    // int getBirthyear {
    //   return birthyear;
    // }


    //setters 

     set setUsername(String name) {
      username = name;
    }

    set setPassword(String pass) {
      password = pass;
    }
    
    // set setBirthyear(int byear) {
    //   birthyear = byear;
    // }


String V_username(String username) {
    if (username.length < 3 || username.length > 7) {
      throw ArgumentError('Username must be between 3 and 7 characters');
    }
    return username;
  }

  // Validate password
  String V_password(String password) {
    if (password.length < 8) {
      throw ArgumentError('Password must be between 3 and 7 characters');
    }
    return password;
  }
}


void main() {
  User test = User('sicksow','passwoed39434');
  test.username = 'sicksow';
  test.password = 'passwoed39434';

  try {
    print(test.username);
    print(test.password);
  } catch (e) {
    print('Error: $e');
  }
}



  

