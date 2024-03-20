import 'package:store_0/helper/api.dart';
import 'package:store_0/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
        url: "https://fakestoreapi.com/products/category/$categoryName",
        token: '');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
