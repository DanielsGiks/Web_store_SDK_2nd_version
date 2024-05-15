import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';
import 'package:sdk_school/Widgets/centered_view/centered_view.dart';
import 'package:sdk_school/Widgets/components/my_button.dart';
import 'package:sdk_school/cart/my_cart_tile.dart';
import 'package:sdk_school/cart/payment_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FakeBaltic>(builder: (context, country, child){
      final userCart = country.cart;
      // Cart UI
      return Scaffold(
        appBar: AppBar(
          actions: [
            // clear all cart
            IconButton(onPressed: (){
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text("Are you sure you want to clear your cart?"),
                actions: [
                  // cancel button
                  TextButton(onPressed: (){
                    Navigator.pop(context);

                  },
                      child: Text("Cancel")),
                  // yes button
                  TextButton(onPressed: (){
                    Navigator.pop(context);

                    country.clearCart();

                  },
                      child: Text("Yes"))
                ],
              )
              );

            }, icon: Icon(CupertinoIcons.clear_thick))
          ],
          title: Text("Cart"),
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(CupertinoIcons.back),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(child:
              ListView.builder(
                shrinkWrap: true,
                itemCount: userCart.length,
                itemBuilder: (context, index){
                  // get individual cart item
                  final cartItem = userCart[index];

                  //return cart tile UI
                  return MyCartTile(cartItem: cartItem);
                  },
                ),
              ),
              // button to pay
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 6,
                child: MyButton(text: "Go to checkout", onTap: (){
                  if(userCart.isNotEmpty){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()));
                  }
                }),
              )

            ],
          ),
        ),
      );
    }

    );
  }
}
