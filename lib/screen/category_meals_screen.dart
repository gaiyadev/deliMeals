import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const id = '/category_meals_screen';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealScreen({
  // @required  this.categoryId,
  // @required  this.categoryTitle,
  // });

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(categoryId),
      ),
    );
  }
}
