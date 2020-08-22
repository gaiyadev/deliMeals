import 'package:flutter/material.dart';
import 'package:navigation/screen/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesScreen(),
    );
  }
}
