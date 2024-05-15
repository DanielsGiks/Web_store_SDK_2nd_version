import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tickets/tickets.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';

import '../Widgets/components/my_button.dart';

class TicketDetails extends StatefulWidget {
  final Tickets ticket;
  final Map<FlightTime, bool> selectedTime = {};



   TicketDetails({Key? key,
  required this.ticket,

  }) {
     for(FlightTime time in ticket.availableTimes){
      selectedTime[time] = false;

     }
   }

   // Initialize selected time to be false


  @override
  State<TicketDetails> createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
  int? selectedIndex;


  void addToCart(Tickets ticket, Map<FlightTime, bool> selectedTime){
    // close the current ticket page
    Navigator.pop(context);

    //

    List<FlightTime> currentlySelectedTime = [];
    for(FlightTime selectedTime in widget.ticket.availableTimes){
      if(widget.selectedTime[selectedTime] == true){
        currentlySelectedTime.add(selectedTime);
      }
    }
    context.read<FakeBaltic>().addToCart(ticket, currentlySelectedTime);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back),
      ),
        title: Text(widget.ticket.city, style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold),),
        //leading: CupertinoIcons.back,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.ticket.imagePath, width: 200,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // description
                    Text("A lovely city to visit at the start of the summer. \n"
                        "It's mix between a cafe infested maze and historic cloud 9",textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.black54,

                    ),),
                    Divider(),
                    Text("Choose the desired time to take off..."),
                    SizedBox(height: 8,),

                    // time
                    Container(
                      width: MediaQuery.sizeOf(context).width / 3,
                      child: ListView.builder(
                        shrinkWrap: true,
                          itemCount: widget.ticket.availableTimes.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                          // get induvidual addon
                            FlightTime time = widget.ticket.availableTimes[index];
                            // return checkbox UI

                        return CheckboxListTile(
                            title: Text(time.time.toString() +" "+ time.AmPm, style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text(widget.ticket.price.toString()+ " Euros"
                            ),
                            value: widget.selectedTime[time] ,
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedTime[time] = value!;
                                if (value == true) {
                                  selectedIndex = index;
                                  widget.selectedTime.forEach((key, _) {
                                    widget.selectedTime[key] = false;
                                  });
                                  widget.selectedTime[time] = true;
                                } else {
                                  selectedIndex = null;
                                  widget.selectedTime[time] = false;
                                }
                              });
                            });
                      } )
                    ),
                    SizedBox(height: 16,),

                    // button to add to cart
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      child: MyButton(text: 'Add to cart',
                        onTap: () =>  addToCart(widget.ticket, widget.selectedTime ) ),
                    ),
                    SizedBox(height: 16,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
