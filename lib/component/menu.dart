import 'package:flutter/material.dart';
import 'package:project_task/utils/divider.dart';
import 'package:project_task/utils/row.dart';

class Menu extends StatelessWidget {
  final String menu;
  final String firstText;
  final String secondText;

  const Menu({
    required this.menu,
    required this.firstText,
    required this.secondText,
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
          MenuRow(firstText: firstText, secondText: secondText),
        ],
      ),
    );
  }
}
