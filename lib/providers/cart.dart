import 'package:flutter/material.dart';

class CartMeal {
  final String id;
  final String title;
  final String imageUrl;
  int quantity;
  final double price;

  CartMeal({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.quantity = 1,
    @required this.price,
  });

}

class Cart with ChangeNotifier {
  final Map<String, CartMeal> _items = {};

  Map<String, CartMeal> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount{
    double total = 0.0;
   _items.forEach((key, cartMeal) {
      total += cartMeal.price * cartMeal.quantity;
    });
   return total;
  }

  int getQuantity(String mealId){
      return _items.containsKey(mealId) ? _items[mealId].quantity : -1;
  }

  void addQuantity(String mealId){
    _items[mealId].quantity++;
    notifyListeners();
  }

  void removeQuantity(String mealId){
        _items[mealId].quantity--;
        if(_items[mealId].quantity == 0){
          removeItem(mealId);
        }
        notifyListeners();
  }


    void addItem(String mealId, double price, String title, String image){
    if(_items.containsKey(mealId)){
      _items.update(mealId, (value) => CartMeal(id: value.id, title: value.title, imageUrl: value.imageUrl, quantity: value.quantity + 1, price: value.price));

    }else{
      _items.putIfAbsent(mealId, () => CartMeal(id: mealId, title: title, imageUrl: image, quantity: 1, price: price));
    }
    notifyListeners();
  }

  void removeItem(String mealId){
    _items.remove(mealId);
    notifyListeners();
  }

  bool isInCart(String mealId){
    return _items.containsKey(mealId);
  }

}
