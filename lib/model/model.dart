import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String uid;
  final String email;
  final String photoUrl;
  final String name;

  User({
    this.uid,
    this.email,
    this.photoUrl,
    this.name,
  });
  factory User.fromMap(Map data) {
    return User(
      uid: data['uid'] ?? '',
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      photoUrl: data['photoUrl'] ?? '',
    );
  }
}

class Product {
  final String name;
  final int price;
  final int amount;
  final int quantity;
  final String id;

  Product({this.name, this.price, this.amount, this.quantity, this.id});
  factory Product.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;
    return Product(
      price: data['price'] ?? '',
      name: data['name'] ?? '',
      amount: data['amount'] ?? '',
      quantity: data['quantity'] ?? '',
      id: data['id'] ?? '',
    );
  }
}
