import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem({
    this.title,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            color.withOpacity(.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
