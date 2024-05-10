import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, required this.onSelectScreen}) : super(key: key);

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 48,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'cooking up..',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text(
              'Meals',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              onSelectScreen('meals');
            },
          ),
          ListTile(
            leading: Icon(Icons.filter_alt_sharp),
            title: Text(
              'Filters',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              onSelectScreen('filters');
            },
          ),
        ],
      ),
    );
  }
}
