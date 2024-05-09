import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService{

  //GET collection
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  //CREATE
  Future<void> addUser(String email, String password){
    return users.add({
      'e-mail': email,
      'password' : password,
    });
  }

  //READ



  //UPDATE

  //DELETE
}