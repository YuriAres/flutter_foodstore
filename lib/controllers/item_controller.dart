import 'package:flutter_foodstore/assets/assets.dart';
import 'package:flutter_foodstore/models/Item_model.dart';

class ItemController {
  List<Item> sandwiches = [
    Item(name: "X-Burger", price: 5.00, image: AssetsPath.xBurger),
    Item(name: "X-Egg", price: 4.50, image: AssetsPath.xEgg),
    Item(name: "X-Bacon", price: 7.00, image: AssetsPath.xBacon)
  ];
  List<Item> extras = [
    Item(name: "Fries", price: 2.00, image: AssetsPath.fries),
    Item(name: "Soft Drink", price: 2.50, image: AssetsPath.soda),
  ];
}
