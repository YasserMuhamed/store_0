import 'package:flutter/material.dart';
import 'package:store_0/models/product_model.dart';
import 'package:store_0/services/get_all_products_service.dart';
import 'package:store_0/widgets/custom_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        title: const Text("New Trend"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 65, left: 12, right: 12),
          child: FutureBuilder<List<ProductModel>>(
              future: AllProductsService().getProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> Products = snapshot.data!;
                  return GridView.builder(
                      itemCount: Products.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 90,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1.5),
                      itemBuilder: (context, index) => CustomCard(
                            product: Products[index],
                          ));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
