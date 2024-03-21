import 'package:flutter/material.dart';
import 'package:store_0/views/home_view.dart';
import 'package:store_0/views/update_product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      routes: {
        HomeView.id: (context) => HomeView(),
        UpdateProductPage.id: (context) => UpdateProductPage()
      },
      initialRoute: HomeView.id,
    );
  }
}
