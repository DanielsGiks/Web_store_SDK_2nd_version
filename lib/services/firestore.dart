import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService{

  //GET collection
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference orders =
  FirebaseFirestore.instance.collection('orders');

  //CREATE
  //-User
  Future<void> addUser(String email, String password){
    return users.add({
      'e-mail': email,
      'password' : password,
    });
  }
  //-Order
  Future<void> saveOrderToDB(String receipt) async{
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,

    });
  }


  //READ



  //UPDATE

  //DELETE

// Sign out

Future<void> signOut()async{
    return await FirebaseAuth.instance.signOut();
}
}