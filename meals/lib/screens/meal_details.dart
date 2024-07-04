import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen(this.meal, {super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text('Meal Details'),
      ),
    );
  }
}
