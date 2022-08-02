import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:project_task/component/mealmenu.dart';
import 'package:project_task/utils/divider.dart';

class Okay extends StatefulWidget {
  const Okay({Key? key}) : super(key: key);

  @override
  State<Okay> createState() => _OkayState();
}

class _OkayState extends State<Okay> {
  var mealList = [
    '조식',
    '중식',
    '석식',
  ];

  var kcalList = 000;

  var menuList = [
    '율무밥',
    '열무보리비빔밥',
    '찹쌀땅콩밥',
  ];

  @override
  Widget build(BuildContext context) {
    BorderSide _borderside = BorderSide(color: Colors.grey);

    return Scaffold(
      body: Column(
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
                  kcalNumber: kcalList,
                  menu: menuList[index],
                );
              },
              itemCount: mealList.length,
            ),
          ),
        ],
      ),
    );
  }
}
