import 'package:flutter/material.dart';
import 'package:project_task/component/meal.dart';

import '../utils/divider.dart';
import 'menu.dart';

class MealMenu extends StatelessWidget {
  final BoxBorder? mealMenuBorder;
  final String when;
  final String kcalNumber;
  final String menu;
  final String firstText;
  final String secondText;

  const MealMenu({
    this.mealMenuBorder,
    required this.when,
    required this.kcalNumber,
    required this.menu,
    required this.firstText,
    required this.secondText,
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
          Meal(
            when: when,
            kcalNumber: kcalNumber,
          ),
          RenderVerticalDivider(),
          Menu(
            menu: menu,
            firstText: firstText,
            secondText: secondText,
          ),
        ],
      ),
    );
  }
}
