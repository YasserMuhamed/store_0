import 'package:flutter/material.dart';
import 'package:store_0/models/product_model.dart';
import 'package:store_0/views/update_product_view.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.product,
  });

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, UpdateProductPage.id,
          arguments: product),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            surfaceTintColor: Colors.white,
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.substring(0, 8),
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product.price}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -60,
            right: 32,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
