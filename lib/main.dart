import 'package:flutter/material.dart';
import 'package:store_0/services/get_all_products_service.dart';

import 'package:store_0/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      routes: {HomeView.id: (context) => HomeView()},
      initialRoute: HomeView.id,
    );
  }
}
