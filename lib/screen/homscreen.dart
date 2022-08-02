import 'package:flutter/material.dart';
import 'package:project_task/component/mealmenu.dart';

import '../component/data/network.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';

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

  var mealList = [
    '조식',
    '중식',
    '석식',
  ];

  var kcalList = [
    '123',
    '456',
    '789',
  ];

  var menuList = [
    '율무밥',
    '열무보리비빔밥',
    '찹쌀땅콩밥',
  ];

  var typeValue = [
    '밥류',
    '밥류',
    '밥류',
  ];
  var ingredientValue = [
    '흰쌀',
    '보리쌀',
    '찹쌀, 땅콩',
  ];
  var doseValue = [
    '210g',
    '210g',
    '210g',
  ];
  var kcalValue = [
    '130 kcal',
    '130 kcal',
    '130 kcal',
  ];

  @override
  Widget build(BuildContext context) {
    BorderSide _borderSide = BorderSide(color: Colors.grey);

    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealMenu(
                mealMenuBorder: index + 1 == mealList.length
                    ? Border(top: _borderSide, bottom: _borderSide)
                    : Border(top: _borderSide),
                when: mealList[index],
                kcalNumber: kcalList[index],
                menu: menuList[index],
                typeValue: typeValue[index],
                ingredientValue: ingredientValue[index],
                doseValue: doseValue[index],
                kcalValue: kcalValue[index],
              );
            },
            itemCount: mealList.length,
          ),
        ),
        SizedBox(height: 10),
        Text('다량영양소'),
        
      ],
    );
  }
}
