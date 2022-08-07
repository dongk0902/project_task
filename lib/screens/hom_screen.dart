import 'package:flutter/material.dart';
import 'package:project_task/providers/data/network.dart';
import 'package:project_task/screens/bar_chart_screen.dart';
import 'package:project_task/utils/stacked_bar.dart';
import 'package:project_task/utils/meal_menu.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:project_task/utils/widget.dart';
import 'package:project_task/widgets/button.dart';

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
                  renderBar(index),
                  renderPie(index),
                  barButton(index),
                  listButton(index),
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

  Widget renderBar(dynamic index) {

    if (index + 1 == mealList.length) {
      return StackedBarChart();
    } else {
      return SizedBox.shrink();
    }
  }

  Widget renderPie(dynamic index) {
    if (index + 1 == mealList.length) {
      return Pie();
    } else {
      return SizedBox.shrink();
    }
  }

  Widget barButton(dynamic index) {
    if (index + 1 == mealList.length) {
      return ElevatedPushButton(
        screen: Exam2(),
        child: Text('Fl_Bar chart'),
      );
    } else {
      return SizedBox.shrink();
    }
  }

  Widget listButton(dynamic index) {
    if (index + 1 == mealList.length) {
      return ElevatedPushButton(
        screen: ListView(),
        child: Text('리스트 뷰'),
      );
    } else {
      return SizedBox.shrink();
    }
  }

}
