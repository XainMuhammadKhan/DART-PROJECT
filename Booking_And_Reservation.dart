import 'dart:io';

class flightBooking{
  late String datechoice;
  late String confirmation;
  late String name;
  late String yourName;
  late int CNIC;
  late int Price;
  late int bookPrice;
  late int Total;
  late String paymentMethod;
  List <Map>Ticket = [];
  List <Map>TicketDetails = [];
  void greetings(){
    print("Welcome! Book your flight right now and reach your destination with us comfortably!");
    print("Enter your desired option number from options given below to continue: \n1- Umrah Ticket \n2- Hajj Ticket \n3- Turkiye Trip Ticket \n4- US Trip Ticket");
  }

  void UmrahFlightBooking(){
    print("Enter your Name");
    this.yourName = stdin.readLineSync()!;
    print("Enter your CNIC Number");
    this.CNIC = int.parse(stdin.readLineSync()!);
    this.name = "Umrah Ticket";
    print("Available dates are:\n1- 20/02/2024\n2- 05/08/2024\n3- 15/08/2024\nSelect any one option!");
    this.datechoice = stdin.readLineSync()!;
    if (datechoice == "1") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'20/02/2024'});
    }
    else if (datechoice == "2") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'05/08/2024'});
    }
    else if (datechoice == "3") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'15/08/2024'});
    }
    this.Price = 100000;
    print("Price is 1,00,000 PKR");
    print("Enter ok to book now");
    this.confirmation = stdin.readLineSync()!;
    if (confirmation=="ok") {
      print("Thank you for booking Umrah Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
      
      print("Would you like to buy Umrah Guide written, published and printed by union of wellknown Muftis for just 200PKR? Enter yes or no!");
      this.bookPrice = 200;
      String bookChoice1 = stdin.readLineSync()!;
      if (bookChoice1=="yes") {
        Ticket.add({'Ticket':name,'Price':Price, 'Guide Price':bookPrice});
      }
      else if(bookChoice1 == "no"){
        Ticket.add({'Ticket':name,'Price':Price});
      }
    }
    print("Items in your cart: \n$Ticket");
    this.Total = Ticket[0]['Guide Price'] += Ticket[0]['Price'];
    print("Pay Now $Total PKR to complete purchase process");
    print("How would you like to pay? Credit card or Debit card? Enter Cc for Credit card and Dc Debit card");
    this.paymentMethod = stdin.readLineSync()!;
    if (paymentMethod=="Cc") {
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Umrah Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
    else if(paymentMethod=="Dc"){
      print("Payment of $Total PKR done by Debit Card! Thank you $yourName $CNIC for booking Umrah Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
       print("Your Ticket Details are \n $TicketDetails");
    }
  }
  void HajjFlightBooking(){
    print("Enter your Name");
    this.yourName = stdin.readLineSync()!;
    print("Enter your CNIC Number");
    this.CNIC = int.parse(stdin.readLineSync()!);
    this.name = "Hajj Ticket";
    print("Available dates are:\n1- 20/02/2024\n2- 05/08/2024\n3- 15/08/2024\nSelect any one option!");
    this.datechoice = stdin.readLineSync()!;
    if (datechoice == "1") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'20/02/2024'});
    }
    else if (datechoice == "2") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'05/08/2024'});
    }
    else if (datechoice == "3") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'15/08/2024'});
    }
    this.Price = 1000000;
    print("Price is 10,00,000 PKR");
    print("Enter ok to book now");
    this.confirmation = stdin.readLineSync()!;
    if (confirmation=="ok") {
      print("Thank you for booking Hajj Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
      
      print("Would you like to buy Hajj Guide written, published and printed by union of wellknown Muftis for just 2000PKR? Enter yes or no!");
      this.bookPrice = 2000;
      String bookChoice1 = stdin.readLineSync()!;
      if (bookChoice1=="yes") {
        Ticket.add({'Ticket':name,'Price':Price, 'Guide Price':bookPrice});
      }
      else if(bookChoice1 == "no"){
        Ticket.add({'Ticket':name,'Price':Price});
      }
    }
    print("Items in your cart: \n$Ticket");
    this.Total = Ticket[0]['Guide Price'] += Ticket[0]['Price'];
    print("Pay Now $Total PKR to complete purchase process");
    print("How would you like to pay? Credit card or Debit card? Enter Cc for Credit card and Dc Debit card");
    this.paymentMethod = stdin.readLineSync()!;
    if (paymentMethod=="Cc") {
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Hajj Flight with us!Enjoy your journey and do remember us in your Prayers specially on Arafah day! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
    else if(paymentMethod=="Dc"){
      print("Payment of $Total PKR done by Debit Card! Thank you $yourName $CNIC for booking Hajj Flight with us!Enjoy your journey and do remember us in your Prayers specially on Arafah day! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
  }
  void TurkiyeFlightBooking(){
    print("Enter your Name");
    this.yourName = stdin.readLineSync()!;
    print("Enter your CNIC Number");
    this.CNIC = int.parse(stdin.readLineSync()!);
    this.name = "Turkiye Flight Ticket";
    print("Available dates are:\n1- 20/02/2024\n2- 05/08/2024\n3- 15/08/2024\nSelect any one option!");
    this.datechoice = stdin.readLineSync()!;
    if (datechoice == "1") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'20/02/2024'});
    }
    else if (datechoice == "2") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'05/08/2024'});
    }
    else if (datechoice == "3") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'15/08/2024'});
    }
    this.Price = 2500000;
    print("Price is 25,00,000 PKR");
    print("Enter ok to book now");
    this.confirmation = stdin.readLineSync()!;
    if (confirmation=="ok") {
      print("Thank you for booking FLight to Turkiye with us!Enjoy your journey and Don't forget to bring Baklava and Kunafeh for us too!");
      print("Your Ticket Details are \n $TicketDetails");
      
      print("Would you like to buy Turkiye Tour Guide written, published and printed by union of wellknown Travel guide for just 10000PKR? Enter yes or no!");
      this.bookPrice = 10000;
      String bookChoice1 = stdin.readLineSync()!;
      if (bookChoice1=="yes") {
        Ticket.add({'Ticket':name,'Price':Price, 'Guide Price':bookPrice});
      }
      else if(bookChoice1 == "no"){
        Ticket.add({'Ticket':name,'Price':Price});
      }
    }
    print("Items in your cart: \n$Ticket");
    this.Total = Ticket[0]['Guide Price'] += Ticket[0]['Price'];
    print("Pay Now $Total PKR to complete purchase process");
    print("How would you like to pay? Credit card or Debit card? Enter Cc for Credit card and Dc Debit card");
    this.paymentMethod = stdin.readLineSync()!;
    if (paymentMethod=="Cc") {
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Flight to Turkiye with us!Enjoy your journey and Don't forget to bring Baklava and Kunafeh for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
    else if(paymentMethod=="Dc"){
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Flight to Turkiye with us!Enjoy your journey and Don't forget to bring Baklava and Kunafeh for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
  }
  void USAFlightBooking(){
    print("Enter your Name");
    this.yourName = stdin.readLineSync()!;
    print("Enter your CNIC Number");
    this.CNIC = int.parse(stdin.readLineSync()!);
    this.name = "USA Flight Ticket";
    print("Available dates are:\n1- 20/02/2024\n2- 05/08/2024\n3- 15/08/2024\nSelect any one option!");
    this.datechoice = stdin.readLineSync()!;
    if (datechoice == "1") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'20/02/2024'});
    }
    else if (datechoice == "2") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'05/08/2024'});
    }
    else if (datechoice == "3") {
      TicketDetails.add({'Name' :yourName, 'CNIC' :CNIC, 'Ticket':name, 'Flight Date' :'15/08/2024'});
    }
    this.Price = 3500000;
    print("Price is 35,00,000 PKR");
    print("Enter ok to book now");
    this.confirmation = stdin.readLineSync()!;
    if (confirmation=="ok") {
      print("Thank you for booking Flight to USA with us!Enjoy your journey and Don't forget to bring Air Jordans for us too!");
      print("Your Ticket Details are \n $TicketDetails");
      
      print("Would you like to buy USA Tour guide written, published and printed by union of wellknown tour guides for just 20000PKR? Enter yes or no!");
      
      this.bookPrice = 20000;
      String bookChoice1 = stdin.readLineSync()!;
      if (bookChoice1=="yes") {
        Ticket.add({'Ticket':name,'Price':Price, 'Guide Price':bookPrice});
      }
      else if(bookChoice1 == "no"){
        Ticket.add({'Ticket':name,'Price':Price});
      }
    }
    print("Items in your cart: \n$Ticket");
    this.Total = Ticket[0]['Guide Price'] += Ticket[0]['Price'];
    print("Pay Now $Total PKR to complete purchase process");
    print("How would you like to pay? Credit card or Debit card? Enter Cc for Credit card and Dc Debit card");
    this.paymentMethod = stdin.readLineSync()!;
    if (paymentMethod=="Cc") {
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Umrah Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
      print("Your Ticket Details are \n $TicketDetails");
    }
    else if(paymentMethod=="Dc"){
      print("Payment of $Total PKR done by Credit Card! Thank you $yourName $CNIC for booking Umrah Flight with us!Enjoy your journey and do remember us in your Prayers! Don't forget to bring Ajwa dates and Zamzam water for us too!");
       print("Your Ticket Details are \n $TicketDetails");
    }
  }
  }
