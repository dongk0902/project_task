import 'package:flutter/material.dart';
import 'package:project_task/utils/divider.dart';
import 'package:project_task/utils/columnAndRow.dart';

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
