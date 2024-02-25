import 'dart:io';
import 'Login_And_Registration.dart';
import 'Booking_And_Reservation.dart';
void main() {
  registrationAndAuthentication loginOrSignup = registrationAndAuthentication();
  flightBooking FlightBooking = flightBooking();

  print(
      "Welcome to our Aviation world! \nIf you are a new user please Sign Up and if you are a registered user please login to continue");
  print("Enter 1 for signup and 2 for login");
  String choice = stdin.readLineSync()!;

  if (choice == "1") {
    loginOrSignup.SignUp();
    // After successful signup, proceed to flight booking
    FlightBooking.greetings();
    String Choice = stdin.readLineSync()!;
    if (Choice == "1") {
      FlightBooking.UmrahFlightBooking();
    } else if (Choice == "2") {
      FlightBooking.HajjFlightBooking();
    } else if (Choice == "3") {
      FlightBooking.TurkiyeFlightBooking();
    } else if (Choice == "4") {
      FlightBooking.USAFlightBooking();
    }
  } else if (choice == "2") {
    loginOrSignup.login();
    // After successful login, proceed to flight booking
    FlightBooking.greetings();
    String Choice = stdin.readLineSync()!;
    if (Choice == "1") {
      FlightBooking.UmrahFlightBooking();
    } else if (Choice == "2") {
      FlightBooking.HajjFlightBooking();
    } else if (Choice == "3") {
      FlightBooking.TurkiyeFlightBooking();
    } else if (Choice == "4") {
      FlightBooking.USAFlightBooking();
    }
  } else {
    print("Ai payen ki hoya tussi? Sahi option choose kr le na yaar");
    print("Enter 1 for signup and 2 for login");
    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      loginOrSignup.SignUp();
      // After successful signup, proceed to flight booking
      FlightBooking.greetings();
      String Choice = stdin.readLineSync()!;
      if (Choice == "1") {
        FlightBooking.UmrahFlightBooking();
      } else if (Choice == "2") {
        FlightBooking.HajjFlightBooking();
      } else if (Choice == "3") {
        FlightBooking.TurkiyeFlightBooking();
      } else if (Choice == "4") {
        FlightBooking.USAFlightBooking();
      }
    } else if (choice == "2") {
      loginOrSignup.login();
      // After successful login, proceed to flight booking
      FlightBooking.greetings();
      String Choice = stdin.readLineSync()!;
      if (Choice == "1") {
        FlightBooking.UmrahFlightBooking();
      } else if (Choice == "2") {
        FlightBooking.HajjFlightBooking();
      } else if (Choice == "3") {
        FlightBooking.TurkiyeFlightBooking();
      } else if (Choice == "4") {
        FlightBooking.USAFlightBooking();
      }
    }
  }
}