import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home.dart';

void main() {

  //WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );

  Firestore.instance
  .collection("usuarios")
  .document("001")
  .setData({"nome" : "Felipe Abreu"});

}
