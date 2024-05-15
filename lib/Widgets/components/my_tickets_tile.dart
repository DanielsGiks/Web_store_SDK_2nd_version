import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Tickets/tickets.dart';


class TicketsTile extends StatelessWidget {
  final Tickets ticket;
  final void Function()? onTap;


  const TicketsTile({Key? key,
  required this.ticket,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Expanded(
              child: Row(
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ticket.city, style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Price: "+ticket.price.toString()+ " Euros",style: TextStyle(color: Colors.black38),),
                    Text("A lovely city to visit at the start of the summer. \n"
                        "It's mix between a cafe infested maze and historic cloud 9")
                  ],
                                  ),
                                  Divider(),
                                  Image.asset(ticket.imagePath, height: 120,),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
