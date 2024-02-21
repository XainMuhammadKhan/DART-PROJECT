import 'dart:io';

import 'Credentials_Storage.dart';

class registrationAndAuthentication {
  void SignUp() {
    print("Enter your email");
    String Email = stdin.readLineSync()!;
    print("Enter your password");
    String Password = stdin.readLineSync()!;
    storeCredentials newUser = storeCredentials(Email, Password);
    newUser.saveCredentialsToTextFile();
    newUser.saveCredentialsToJsonFile();
    print("User registered successfully!");
  }

  void login() {
    while (true) {
      print("Enter your email");
      String enteredEmail = stdin.readLineSync()!;
      print("Enter your password");
      String enteredPassword = stdin.readLineSync()!;

      if (authenticateCredentials(enteredEmail, enteredPassword)) {
        print("User login successful.");
        break;
      } 
    }
  }

  bool authenticateCredentials(String enteredEmail, String enteredPassword) {
    List<Map<String, String>> credentialsList =
        storeCredentials.getCredentialsFromJsonFile();
    List<List<String>> credentialsText =
        storeCredentials.getCredentialsFromTextFile();

    bool emailMatch = false;
    bool passwordMatch = false;

    for (var user in credentialsList) {
      if (user['email'] == enteredEmail) {
        emailMatch = true;
        if (user['password'] == enteredPassword) {
          passwordMatch = true;
          return true;
        }
      }
    }

    // Additional check for credentials from text file
    for (var user in credentialsText) {
      if (user[0] == enteredEmail) {
        emailMatch = true;
        if (user[1] == enteredPassword) {
          passwordMatch = true;
          return true;
        }
      }
    }
    

    if (!emailMatch && !passwordMatch) {
      print("User doesn't exist. Please sign up.");
      SignUp();
    } else {
      print("Incorrect email or password. Please try again.");
    }

    return false;
  }
}


