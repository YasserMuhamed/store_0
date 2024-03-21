import 'package:store_0/helper/api.dart';
import 'package:store_0/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String category,
      required String description,
      required String image,
      required String price,
      required String id}) async {
    ProductModel data = await Api().put(
        url: "https://fakestoreapi.com/products/$id",
        body: {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category,
          "id": id
        },
        token: '');
    return data;
  }
}
