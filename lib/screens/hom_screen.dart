import 'package:flutter/material.dart';
import 'package:project_task/providers/data/network.dart';
import 'package:project_task/utils/bar_chart.dart';
import 'package:project_task/utils/meal_menu.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/pie.dart';
import '../utils/list_data.dart';

const apiKey = '947197bdd2b24d219e57';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? foodName;
  int? carbohydrate;
  int? protein;
  int? fat;
  int? sodium;
  int? cholesterol;
  int? saturatedFattyAcid;

  void FoodNutrition() async {
    Network network = Network(
        'http://openapi.foodsafetykorea.go.kr/api/${apiKey}/I2790/json/1/1000');

    var foodData = await network.getJsonData();
  }

  void updateData(dynamic foodData, int jsonNumber) {
    foodName = foodData['row'][jsonNumber]['DESC_KOR']; // 이름
    carbohydrate = foodData['row'][jsonNumber]['NUTR_CONT2']; // 탄수화물
    protein = foodData['row'][jsonNumber]['NUTR_CONT3']; // 단백질
    fat = foodData['row'][jsonNumber]['NUTR_CONT4']; // 지방
    sodium = foodData['row'][jsonNumber]['NUTR_CONT6']; // 식이섬유 없음 => 나트륨으로 대체
    cholesterol = foodData['row'][jsonNumber]['NUTR_CONT7']; // 콜레스테롤
    saturatedFattyAcid = foodData['row'][jsonNumber]['NUTR_CONT8']; // 포화 지방산
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
      return Exam();
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
}
