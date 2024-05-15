import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Tickets/fakebaltic.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Thank you for your order!"),
          Consumer<FakeBaltic>(builder: (context, country, child)=> Text(country.displayCartReceipt()),
                    )],
    ),
    );
  }
}
