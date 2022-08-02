import 'package:flutter/material.dart';
import 'package:project_task/utils/divider.dart';
import 'package:project_task/utils/row.dart';

class Menu extends StatelessWidget {
  final String menu;
  const Menu({
    required this.menu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          MenuRow(firstText: '종류', secondText: '밥류'),
          MenuRow(firstText: '재료', secondText: '보리쌀'),
          MenuRow(firstText: '정량', secondText: '210g'),
          MenuRow(firstText: '칼로리', secondText: '130 kcal'),
        ],
      ),
    );
  }
}
