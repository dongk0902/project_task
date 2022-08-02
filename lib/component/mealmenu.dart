import 'package:flutter/material.dart';
import 'package:project_task/component/meal.dart';

import '../utils/divider.dart';
import 'menu.dart';

class MealMenu extends StatelessWidget {
  final BoxBorder? mealMenuBorder;
  final String when;
  final String kcalNumber;
  final String menu;
  final String typeValue;
  final String ingredientValue;
  final String doseValue;
  final String kcalValue;

  const MealMenu({
    this.mealMenuBorder,
    required this.when,
    required this.kcalNumber,
    required this.menu,
    required this.typeValue,
    required this.ingredientValue,
    required this.doseValue,
    required this.kcalValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        border: mealMenuBorder,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Meal(
                when: when,
                kcalNumber: kcalNumber,
              ),
              RenderVerticalDivider(),
              Menu(
                menu: menu,
                typeValue: typeValue,
                ingredientValue: ingredientValue,
                doseValue: doseValue,
                kcalValue: kcalValue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
