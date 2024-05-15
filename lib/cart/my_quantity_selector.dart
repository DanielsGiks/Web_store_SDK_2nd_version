import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Tickets/tickets.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Tickets ticket;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector({Key? key,
    required this.quantity,
    required this.ticket,
    required this.onIncrement,
    required this.onDecrement

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(CupertinoIcons.minus_circle,
              size: 20,
              color: Colors.black38,),
          ),
          // quantity count
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(quantity.toString(),
            ),
          ),

          // increase button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(CupertinoIcons.add_circled,
              size: 20,
              color: Colors.black38,),
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
    );
  }
}
