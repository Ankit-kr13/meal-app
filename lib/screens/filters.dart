import 'package:flutter/material.dart';
import 'package:meals/main.dart';
import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var glutenFreeFilterSet = false;
  var lactoseFreeFilterSet = false;
  var vegetarianFilterSet = false;
  var veganFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (context) => const TabsScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: Column(children: [
        SwitchListTile(
          value: glutenFreeFilterSet,
          onChanged: (isChecked) {
            setState(() {
              glutenFreeFilterSet = isChecked;
            });
          },
          title: Text(
            'Gluten-free',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Only include Gluten-free meals.'),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: lactoseFreeFilterSet,
          onChanged: (isChecked) {
            setState(() {
              lactoseFreeFilterSet = isChecked;
            });
          },
          title: Text(
            'Lactose-free',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Only include Lactose-free meals.'),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: vegetarianFilterSet,
          onChanged: (isChecked) {
            setState(() {
              vegetarianFilterSet = isChecked;
            });
          },
          title: Text(
            'Vegetarian',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Only include Vegetarian meals.'),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: veganFilterSet,
          onChanged: (isChecked) {
            setState(() {
              veganFilterSet = isChecked;
            });
          },
          title: Text(
            'Vegan',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Only include Vegan meals.'),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
      ]),
    );
  }
}
