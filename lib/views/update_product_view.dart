import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_0/models/product_model.dart';
import 'package:store_0/services/update_products.dart';
import 'package:store_0/widgets/custom_button.dart';
import 'package:store_0/widgets/custom_txt_field.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static String id = "update Product";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, image;

  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Update Product",
            style: TextStyle(color: Colors.grey.shade800),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 100,
              ),
              CustomTxtField(
                onChange: (data) {
                  productName = data;
                },
                txtlabel: "Product Name",
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTxtField(
                onChange: (data) {
                  description = data;
                },
                txtlabel: "description",
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTxtField(
                key_type: TextInputType.number,
                onChange: (data) {
                  price = data;
                },
                txtlabel: "price",
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTxtField(
                onChange: (data) {
                  image = data;
                },
                txtlabel: "Image",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                buttonLabel: "submit",
                buttonColor: Colors.black,
                ontap: () async {
                  isLoading = true;
                  setState(() {});
                  try {
                    await UpdateProduct(product);
                    print("Success");
                  } catch (e) {
                    print(e);
                    print("ERORR");
                  }

                  isLoading = false;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> UpdateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: product.id.toString(),
        title: productName ?? product.title,
        category: product.category,
        description: description ?? product.description,
        image: image ?? product.image,
        price: price ?? product.price.toString());
  }
}
