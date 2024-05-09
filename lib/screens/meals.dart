import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key, required this.title, required this.melas})
      : super(key: key);

  final String title;
  final List<Meal> melas;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Uh oh....nothing here!!!"),
          const SizedBox(height: 16),
          Text("Try Selecting a different category",
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );

    if (melas.isNotEmpty) {
      content = ListView.builder(
          itemCount: melas.length,
          itemBuilder: (context, index) => MealItem(meal: melas[index]));
      ;
    }
    return Scaffold(appBar: AppBar(title: Text(title)), body: content);
  }
}
