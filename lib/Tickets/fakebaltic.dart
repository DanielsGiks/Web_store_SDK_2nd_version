import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:sdk_school/cart/cart_item.dart';

import 'tickets.dart';

class FakeBaltic extends ChangeNotifier{
  // List of destinations
  final List<Tickets> _flights = [

    /// --------------------- ITALY -------------------
    Tickets(country: TicketsCountry.Italy,
        city: "Rome",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 5, price: 12.0, ),
          FlightTime(AmPm: "AM", time: 9, price: 15.0),
          FlightTime(AmPm: "PM", time: 8, price: 8.0),
        ],
        price: 63.99
    ),
    Tickets(country: TicketsCountry.Italy,
        city: "Cagliari",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6, price: 8.00),
          FlightTime(AmPm: "AM", time: 9, price: 12.00),
          FlightTime(AmPm: "PM", time: 2, price: 10.00),
        ],
        price: 49.99
    ),
    Tickets(country: TicketsCountry.Italy,
        city: "Milan",
        imagePath: 'lib/assets/Rome.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6, price: 21.00),
          FlightTime(AmPm: "AM", time: 9, price: 21.00),
          FlightTime(AmPm: "PM", time: 2, price: 21.00),
          FlightTime(AmPm: "PM", time: 8, price: 21.00),
        ],
        price: 79.99
    ),
    /// --------------------- FRANCE -------------------
    Tickets(country: TicketsCountry.France,
        city: "Paris",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 4, price: 15.00),
          FlightTime(AmPm: "AM", time: 10, price: 15.00),
          FlightTime(AmPm: "PM", time: 5, price: 15.00),
        ],
        price: 39.99
    ),
    Tickets(country: TicketsCountry.France,
        city: "Lyon",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 7, price: 12.99),
          FlightTime(AmPm: "AM", time: 12, price: 17.99),
          FlightTime(AmPm: "PM", time: 4, price: 12.99),
        ],
        price: 109.99
    ),
    Tickets(country: TicketsCountry.France,
        city: "Marseille",
        imagePath: 'lib/assets/Paris.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 9, price: 8.99),
          FlightTime(AmPm: "AM", time: 12, price: 8.99),
          FlightTime(AmPm: "PM", time: 8, price: 12.99),
        ],
        price: 64.99
    ),
    /// --------------------- SPAIN -------------------
    Tickets(country: TicketsCountry.Spain,
        city: "Barcelona",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6, price: 0.99, ),
          FlightTime(AmPm: "PM", time: 2, price: 2.99),
          FlightTime(AmPm: "PM", time: 10, price: 6.99),
        ],
        price: 39.95
    ),
    Tickets(country: TicketsCountry.Spain,
        city: "Madrid",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6, price: 0.00),
          FlightTime(AmPm: "PM", time: 2,price: 0.00),
          FlightTime(AmPm: "PM", time: 10, price: 2.00),
        ],
        price: 72.99
    ),
    Tickets(country: TicketsCountry.Spain,
        city: "Bilbao",
        imagePath: 'lib/assets/Barcelona.jpg',
        availableTimes: [
          FlightTime(AmPm: "AM", time: 6, price: 6.00),
          FlightTime(AmPm: "PM", time: 2, price: 6.00),
          FlightTime(AmPm: "PM", time: 10, price: 8.00),
        ],
        price: 99.99
    ),


  ];

  // -------- Getters ----------------\\
List<Tickets> get flights => _flights;
List<CartItem> get cart => _cart;
//-------------------------------------\\

//------------Operations----------------\\

  // USER CART
  final List<CartItem> _cart = [];

 // Add to cart
void addToCart(Tickets tickets, List<FlightTime> selectedTime){
  // see if there is a cart item with 
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    // check if the ticket items are the same
    bool isSameTicket = item.ticket == tickets;
    // check if the list of selected times are the same
    bool isSameTime = ListEquality().equals(item.selectedTime, selectedTime);

    return isSameTicket && isSameTime;
    });
  // if the item already exists, increase its quantity
  if(cartItem != null){
    cartItem.quantity++;
  }
  //Otherwise add a new cart item to the cart
  else{
    _cart.add(CartItem(
        ticket: tickets,
        selectedTime: selectedTime
    ),
    );
  }
  notifyListeners();
}

// remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex != 1){
    if(_cart[cartIndex].quantity > 1){
      _cart[cartIndex].quantity--;
    }else{
      _cart.removeAt(cartIndex);
    }

  }
  notifyListeners();
}
// get total price of cart
double getTotalPrice(){
  double total = 0.0;

  for(CartItem cartItem in _cart){
    double itemTotal = cartItem.ticket.price;

    for(FlightTime selectedTime in cartItem.selectedTime){
      itemTotal += selectedTime.price;
    }
    total += itemTotal * cartItem.quantity;
  }
  return total;
}


// get total numbers of tickets in the cart

int  getTotalItemCount(){
  int totalItemCount = 0;
  for(CartItem cartItem in _cart){
    totalItemCount += cartItem.quantity;
  }

  return totalItemCount;
}


// clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}


// ------------- HELPERS -------------------\\

// Generate a receipt
String displayCartReceipt(){
  final receipt = StringBuffer();
  receipt.writeln("Heres your receipt.");
  receipt.writeln();

  //format the date to include up to seconds
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("-----------");
  for(final cartItem in _cart){
    receipt.writeln("${cartItem.quantity} x ${cartItem.ticket.city} - ${cartItem.ticket.price}");
    if(cartItem.selectedTime.isNotEmpty){
      receipt.writeln("  Flight Time: ${_formatTimes(cartItem.selectedTime)}");
    }
    receipt.writeln();
  }
  receipt.writeln("-----------");
  receipt.writeln();
  receipt.writeln("Total items: ${getTotalItemCount()}");
  receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");

  return receipt.toString();


}


// Format double value into money
String _formatPrice(double price){
  return price.toStringAsFixed(2) + " Eur";
}


//format list of times into a string summary
String _formatTimes(List<FlightTime> availableTimes){
  return availableTimes.map((availableTimes) =>
  "${availableTimes.time}"+" "+"${availableTimes.AmPm}(${_formatPrice(availableTimes.price)})").join(", ");
}

}