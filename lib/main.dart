import 'package:flutter/material.dart';
import 'package:project/ListProducts/list_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Mobile',
      debugShowCheckedModeBanner: false,
      home: PageList(),
    );
  }
}
