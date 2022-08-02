import 'package:flutter/material.dart';
import 'package:project_task/component/mealmenu.dart';
import 'package:project_task/utils/divider.dart';

import '../component/data/network.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

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

  var dataList = [
    '종류',
    '재료',
    '정량',
    '칼로리',
  ];

  var dataValue = [
    '밥류',
    '보리쌀',
    '210g',
    '130kcal',
  ];

  @override
  Widget build(BuildContext context) {
    var M = MediaQuery.of(context);
    print("넓이 : ${M.size.width}");
    print("높이:${M.size.height}");

    BorderSide _borderside = BorderSide(color: Colors.grey);

    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealMenu(
                mealMenuBorder: index + 1 == mealList.length
                    ? Border(
                        top: _borderside,
                        bottom: _borderside,
                      )
                    : Border(
                        top: _borderside,
                      ),
                when: mealList[index],
                kcalNumber: kcalList[index],
                menu: menuList[index],
                firstText: dataList[index],
                secondText: dataValue[index],
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
