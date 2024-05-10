import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {Key? key,
      this.title,
      required this.melas,
      required this.onToggleFavorite})
      : super(key: key);

  final String? title;
  final List<Meal> melas;
  final void Function(Meal meal) onToggleFavorite;
  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealDetailsScreen(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

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
          itemBuilder: (context, index) => MealItem(
                meal: melas[index],
                onSelectMeal: (meal) {
                  selectMeal(context, meal);
                },
              ));
      ;
    }
    if (title == null) {
      return content;
    }
    return Scaffold(appBar: AppBar(title: Text(title!)), body: content);
  }
}
