import 'package:store_0/helper/api.dart';
import 'package:store_0/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title,
      required String category,
      required String description,
      required String image,
      required int id,
      required double price}) async {
    ProductModel data = await Api().put(
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
