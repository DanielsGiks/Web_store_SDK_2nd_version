import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';
import 'package:sdk_school/cart/my_quantity_selector.dart';

import 'cart_item.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({Key? key,
  required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FakeBaltic>(builder: (context, country, child) =>
      Container(
        child: Column(
          children: [
            Row(
              children: [
                // Country image
                ClipRRect(
                  borderRadius:BorderRadius.circular(8),
                    child: Image.asset(cartItem.ticket.imagePath, height: 120,)),
                SizedBox(width: 10,),

                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.ticket.city),
                    Text("Price: "+cartItem.ticket.price.toString()),
                  ],
                ),
                Spacer(),

                // quantity
                MyQuantitySelector(
                    quantity: cartItem.quantity,
                    ticket: cartItem.ticket,
                    onIncrement: (){
                      country.addToCart(cartItem.ticket, cartItem.selectedTime);

                    },
                    onDecrement: (){
                      country.removeFromCart(cartItem); 

                    })

              ],
            ),
            // Flight time
            SizedBox(
              height: cartItem.selectedTime.isEmpty ? 0 :60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedTime.map((selectedTime) => FilterChip(
                    label: Row(
                      children: [
                        // Time
                        Text(selectedTime.time.toString() + selectedTime.AmPm.toString()),
                        // price
                        Text(selectedTime.price.toString()),
                      ],
                    ), onSelected: (value){},
                  backgroundColor: Colors.white60,
                ),
                ).toList(),
              ),
            )

          ],
        ),
      ),);
  }
}
