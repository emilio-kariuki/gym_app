import 'package:flutter/material.dart';

import '../Model/item_model.dart';


class ItemController {
  List<ItemModel> items = [
    ItemModel("Glues", "assets/up.jpg"),
    ItemModel("Abs", "assets/pull.jpg"),
    ItemModel("Arms", "assets/weights.jpg"),
    ItemModel("Legs", "assets/legs.jpg")
  ];
}
