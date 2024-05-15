import 'package:flutter/material.dart';

import '../Tickets/tickets.dart';

class CartItem{
  Tickets ticket;
  List<FlightTime> selectedTime;
  int quantity;

  CartItem({
    required this.ticket,
    required this.selectedTime,
     this.quantity = 1,
});
  double get totalPrice{
    double timePrice = selectedTime.fold(0, (sum, tickets) => sum + ticket.price);
    return (ticket.price + timePrice) * quantity;
  }



}