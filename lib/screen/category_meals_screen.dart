import 'package:flutter/material.dart';
import 'package:navigation/dummy_data.dart';
import 'package:navigation/widgets/meal_item.dart';

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
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
            imageUrl: categoryMeals[index].imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
