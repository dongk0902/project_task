import 'package:flutter/material.dart';
import '../utils/columnAndRow.dart';
import '../utils/divider.dart';

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


class Meal extends StatelessWidget {
  final String when;
  final String kcalNumber;
  const Meal({
    required this.when,
    required this.kcalNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.25;
    var width = MediaQuery.of(context).size.width * 0.2;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              when,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  '$kcalNumber',
                  style: TextStyle(
                      color: Colors.greenAccent[700],
                      fontWeight: FontWeight.w700),
                ),
                Text(' kcal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Menu extends StatelessWidget {
  final String menu;
  final String typeValue;
  final String ingredientValue;
  final String doseValue;
  final String kcalValue;

  const Menu({
    required this.menu,
    required this.typeValue,
    required this.ingredientValue,
    required this.doseValue,
    required this.kcalValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.25;
    var width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(menu),
              IconButton(
                splashColor: Colors.white.withOpacity(0.0),
                highlightColor: Colors.white.withOpacity(0.0),
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.redAccent[100],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          MenuColumn(
            typeValue: typeValue,
            ingredientValue: ingredientValue,
            doseValue: doseValue,
            kcalValue: kcalValue,
          ),
        ],
      ),
    );
  }
}
