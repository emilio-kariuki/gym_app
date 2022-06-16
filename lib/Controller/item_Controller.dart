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
    ItemModel("Glues", "assets/up.jpg", "The exercise is of the glutes"),
    ItemModel("Abs", "assets/weights.jpg", "The exercise is used to bring abs"),
    ItemModel(
        "Arms", "assets/pull.jpg", "This exercise helps one get strong arms"),
    ItemModel("Legs", "assets/legs.jpg", "This exercise builds strong legs")
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
