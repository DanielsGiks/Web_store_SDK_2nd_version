import 'package:flutter/cupertino.dart';

import 'tickets.dart';

class FakeBaltic extends ChangeNotifier{
  // List of destinations
  final List<Tickets> _flights = [

    /// --------------------- ITALY -------------------
    Tickets(country: TicketsCountry.Italy,
        city: "Rome",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 5),
          FlightTime(AmPm: "AM", time: 9),
          FlightTime(AmPm: "PM", time: 8),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.Italy,
        city: "Cagliari",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6),
          FlightTime(AmPm: "AM", time: 9),
          FlightTime(AmPm: "PM", time: 2),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.Italy,
        city: "Milan",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6),
          FlightTime(AmPm: "AM", time: 9),
          FlightTime(AmPm: "PM", time: 2),
          FlightTime(AmPm: "PM", time: 8),
        ],
        price: 0.00
    ),
    /// --------------------- FRANCE -------------------
    Tickets(country: TicketsCountry.France,
        city: "Paris",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 4),
          FlightTime(AmPm: "AM", time: 10),
          FlightTime(AmPm: "PM", time: 5),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.France,
        city: "Lyon",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 7),
          FlightTime(AmPm: "AM", time: 12),
          FlightTime(AmPm: "PM", time: 4),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.France,
        city: "Marseille",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 9),
          FlightTime(AmPm: "AM", time: 12),
          FlightTime(AmPm: "PM", time: 8),
        ],
        price: 0.00
    ),
    /// --------------------- SPAIN -------------------
    Tickets(country: TicketsCountry.Spain,
        city: "Barcelona",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6),
          FlightTime(AmPm: "PM", time: 2),
          FlightTime(AmPm: "PM", time: 10),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.Spain,
        city: "Madrid",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6),
          FlightTime(AmPm: "PM", time: 2),
          FlightTime(AmPm: "PM", time: 10),
        ],
        price: 0.00
    ),
    Tickets(country: TicketsCountry.Spain,
        city: "Bilbao",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6),
          FlightTime(AmPm: "PM", time: 2),
          FlightTime(AmPm: "PM", time: 10),
        ],
        price: 0.00
    ),


  ];

  // -------- Getters ----------------\\
List<Tickets> get flights => _flights;
//-------------------------------------\\

//------------Operations----------------\\
 // Add to cart

// remove from cart

// get total price of cart

// get total numbers of tickets in the cart

// clear cart

// ------------- HELPERS -------------------\\

// Generate a receipt




}