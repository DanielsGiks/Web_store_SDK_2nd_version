class Tickets {

  final TicketsCountry country;
  final String city;
 // final String city;
  final String imagePath;
//  final double time;
  List<FlightTime> availableTimes;
  final double price;

  Tickets({
    required this.country,
    //required this.city,
    required this.city,
    required this.imagePath,
    //required this.time,
    required this.availableTimes,
    required this.price,
});
}
// Ticket cities

enum TicketsCountry{
  Italy,
  France,
  Spain,
}

// Ticket flight time

class FlightTime{
  String AmPm;
  double time;
  double price;

  FlightTime({
    required this.AmPm,
    required this.time,
    required this.price,
    });
}