import 'package:flutter/material.dart';
import 'package:navigation/screen/category_meals_screen.dart';
import 'package:navigation/screen/meal_details_screen.dart';
import 'package:navigation/screen/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 255, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 50, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealScreen.id: (context) => CategoryMealScreen(),
        MealDetailsScreen.id: (context) => MealDetailsScreen(),
      },
    );
  }
}
