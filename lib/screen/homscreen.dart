import 'package:flutter/material.dart';
import 'package:project_task/component/mealmenu.dart';
import 'package:project_task/utils/divider.dart';

import '../component/data/network.dart';
import 'exam.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MealMenu(
              when: '조식',
              kcalNumber: 828,
              menu: '열무밥',
            ),
            RenderDivider(),
            Text('다량영양소'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Okay(),
                  ),
                );
              },
              child: Text('이동'),
            ),
          ],
        ),
      ),
    );
  }
}
