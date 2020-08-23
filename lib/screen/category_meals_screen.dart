import 'package:flutter/material.dart';
import 'package:navigation/models/meal.dart';
import 'package:navigation/widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  static const id = '/category_meals_screen';
  final List<Meal> availableMeals;
  CategoryMealScreen(this.availableMeals);

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categoryTitle;
  List<Meal> displayMeals;
  var _loadedInitData = false;

  // void _removeMeal(String mealId) {
  //   setState(() {
  //     displayMeals.removeWhere((meal) => meal.id == mealId);
  //   });
  // }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArg =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArg['title'];
      final categoryId = routeArg['id'];
      displayMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  void initState() {
    //code here
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///removed some code here
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayMeals[index].id,
            title: displayMeals[index].title,
            affordability: displayMeals[index].affordability,
            complexity: displayMeals[index].complexity,
            duration: displayMeals[index].duration,
            imageUrl: displayMeals[index].imageUrl,
            // removeItem: _removeMeal,
          );
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
