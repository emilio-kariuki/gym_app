import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Fetch/fetch_data.dart';
import '../Model/item_model.dart';

class ItemController extends GetxController {
  var isLoading = true.obs;
  var product = <Ecoville>[].obs;
  var item = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  List<ItemModel> items = [
    ItemModel("Glues", "assets/up.jpg"),
    ItemModel("Abs", "assets/pull.jpg"),
    ItemModel("Arms", "assets/weights.jpg"),
    ItemModel("Legs", "assets/legs.jpg")
  ];
  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchData();
      product.value = products;
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
