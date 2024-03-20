import 'package:store_0/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/categories", token: '');

    return data;
  }
}
