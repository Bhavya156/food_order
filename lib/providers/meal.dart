import 'package:flutter/material.dart';

class Meal with ChangeNotifier{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final double price;
  final bool isJain;
  final bool isSpicy;
  final bool isMedium;
  final bool isSweet;
  final String description;

  Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.isJain,
    @required this.isSpicy,
    @required this.isMedium,
    @required this.isSweet,
    @required this.description,
  });

  Meal.fromMap(Map<dynamic, dynamic> res)
  : id = res['id'],
  categories = res['categories'],
  title = res['title'],
  imageUrl = res['imageUrl'],
  price = res['price'],
  isJain = res['isJain'],
  isSpicy = res['isSpicy'],
  isMedium = res['isMedium'],
  isSweet = res['isSweet'],
  description = res['description'];


  Map<String, Object> toMap(){
    return {
      'id': id,
      'categories': categories,
      'title': title,
      'imageUrl': imageUrl,
      'price': price,
      'isJain': isJain,
      'isSpicy': isSpicy,
      'isMedium': isMedium,
      'isSweet': isSweet,
      'description': description,
    };
  }
}
