import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';
import 'package:sdk_school/cart/my_reciept.dart';
import 'package:sdk_school/services/firestore.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({Key? key}) : super(key: key);

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  //get access to the db
  FirestoreService db = FirestoreService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // if we get to this page, submit order to firestore db
    String receipt = context.read<FakeBaltic>().displayCartReceipt();
    db.saveOrderToDB(receipt);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress..."),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.white60,
              child: MyReceipt()),
        ],
      ),
    );
  }
}
