import 'dart:io';
import 'dart:convert';

class storeCredentials {
  String email;
  String password;

  storeCredentials(this.email, this.password);

  void saveCredentialsToTextFile() {
    File file = File('credentials.txt');
    file.writeAsStringSync('$email $password\n', mode: FileMode.append);
  }

  static List<List<String>> getCredentialsFromTextFile() {
    File file = File('credentials.txt');
    if (file.existsSync()) {
      String content = file.readAsStringSync();
      List<String> lines = content.split('\n');
      return lines
          .map((line) => line.split(' '))
          .where((elements) => elements.length == 2)
          .toList();
    }
    return [];
  }

  
  void saveCredentialsToJsonFile() {
    File file = File('credentials.json');
    List<Map<String, String>> credentialsList = [];

    if (file.existsSync()) {
      String jsonString = file.readAsStringSync();

      try {
        var decodedJson = jsonDecode(jsonString);
        if (decodedJson is List) {
          credentialsList = decodedJson
              .whereType<Map<String, dynamic>>()
              .map((item) => Map<String, String>.from(item))
              .toList();
        }
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    }

    credentialsList.add({'email': email, 'password': password});
    file.writeAsStringSync(jsonEncode(credentialsList));
  }

  static List<Map<String, String>> getCredentialsFromJsonFile() {
    File file = File('credentials.json');
    if (file.existsSync()) {
      String jsonString = file.readAsStringSync();

      try {
        var decodedJson = jsonDecode(jsonString);
        if (decodedJson is List) {
          return decodedJson
              .whereType<Map<String, dynamic>>()
              .map((item) => Map<String, String>.from(item))
              .toList();
        }
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    }

    return [];
  }
}


