import 'package:flutter_foodstore/assets/assets.dart';
import 'package:flutter_foodstore/models/item_model.dart';

class ItemController {
  List<Item> sandwiches = [
    Item(
        name: "X-Burger",
        price: 5.00,
        image: AssetsPath.xBurger,
        description:
            "A delicious burger with bread, lettuce, tomato, meat, cheese, cucumber and onion."),
    Item(
        name: "X-Egg",
        price: 4.50,
        image: AssetsPath.xEgg,
        description:
            "A delicious burger with bread, lettuce, tomato, egg and cheese."),
    Item(
        name: "X-Bacon",
        price: 7.00,
        image: AssetsPath.xBacon,
        description: "A delicious burger with bread, meat, cheese and bacon.")
  ];
  List<Item> extras = [
    Item(
        name: "Fries",
        price: 2.00,
        image: AssetsPath.fries,
        description:
            "A delicious Fries, with selected ingredients and toasted to the right point."),
    Item(
        name: "Soft Drink",
        price: 2.50,
        image: AssetsPath.soda,
        description:
            "A delicious refreshing drink to quench your thirst and accompany your snack."),
  ];
}
