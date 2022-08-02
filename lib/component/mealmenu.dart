import 'package:flutter/material.dart';
import 'package:project_task/component/meal.dart';

import '../utils/divider.dart';
import 'menu.dart';

class MealMenu extends StatelessWidget {
  final String when;
  final int kcalNumber;
  final String menu;
  final BoxBorder? mealMenuBorder;

  const MealMenu({
    required this.when,
    required this.kcalNumber,
    required this.menu,
    this.mealMenuBorder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        border: mealMenuBorder,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Meal(when: when, kcalNumber: kcalNumber),
          RenderVerticalDivider(),
          Menu(menu: menu),
        ],
      ),
    );
  }
}
