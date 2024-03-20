import 'package:store_0/helper/api.dart';
import 'package:store_0/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String category,
      required String description,
      required String image,
      required int id,
      required double price}) async {
    ProductModel data = await Api().post(
        url: "https://fakestoreapi.com/products",
        body: {
          "id": id,
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category
        },
        token: '');
    return data;
  }
}
