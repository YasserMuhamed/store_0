class ProductModel {
  final dynamic id;
  final dynamic price;
  final String title;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"],
        description: jsonData["description"],
        category: jsonData["category"],
        image: jsonData["image"],
        rating: RatingModel.fromJson(
            jsonData["rating"] ?? {"rate": 0, "count": 0}));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: jsonData["rate"].toString(), count: jsonData["count"]);
  }
}
