import 'package:flutter_foodstore/models/item_model.dart';

class Cart {
  final String? clientName;
  Map<String, double> cartMap = {};

  Cart({this.clientName, required this.cartMap});

  void addtoCart(Item item) {
    cartMap[item.name] = item.price;
  }

  void deleteAll() {
    cartMap.clear();
  }

  void deleteItem(Item item) {
    cartMap.remove(item.name);
  }
}
