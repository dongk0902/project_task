import 'package:flutter/material.dart';
import 'package:project_task/providers/data/network.dart';
import 'package:project_task/utils/meal_menu.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:project_task/utils/widget.dart';

import '../utils/pie.dart';
import '../utils/list_data.dart';

const apiKey = '947197bdd2b24d219e57';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void FoodNutrition() async {
    Network network = Network(
        'http://openapi.foodsafetykorea.go.kr/api/${apiKey}/I2790/json/1/21');
  }

  @override
  Widget build(BuildContext context) {
    BorderSide _borderSide = BorderSide(color: Colors.grey);

    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  MealMenu(
                    mealMenuBorder: index + 1 == mealList.length
                        ? Border(top: _borderSide, bottom: _borderSide)
                        : Border(top: _borderSide),
                    when: mealList[index],
                    kcalNumber: kcalList[index],
                    menu: menuList[index],
                  ),
                  renderText(index, mealList, context),
                  renderPie(index, mealList, context),
                  renderButton1(index, mealList, context),
                  renderButton2(index, mealList, context),
                ],
              );
            },
            itemCount: mealList.length,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
