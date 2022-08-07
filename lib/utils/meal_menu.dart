import 'package:flutter/material.dart';
import 'package:project_task/widgets/text.dart';
import 'package:provider/provider.dart';
import 'Icon.dart';
import 'list_data.dart';

class MealMenu extends StatelessWidget {
  final BoxBorder? mealMenuBorder;
  final String when;
  final String kcalNumber;
  final dynamic menu;

  const MealMenu({
    this.mealMenuBorder,
    required this.when,
    required this.kcalNumber,
    required this.menu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        border: mealMenuBorder,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Meal(
                when: when,
                kcalNumber: kcalNumber,
              ),
              Menu(
                menu: menu,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Meal extends StatelessWidget {
  final String when;
  final String kcalNumber;

  const Meal({
    required this.when,
    required this.kcalNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.25;
    var width = MediaQuery.of(context).size.width * 0.2;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              when,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  '$kcalNumber',
                  style: TextStyle(
                      color: Colors.greenAccent[700],
                      fontWeight: FontWeight.w700),
                ),
                Text(' kcal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  final String menu;

  const Menu({
    required this.menu,
    Key? key,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isClicked1 = true;
  bool isClicked2 = true;

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    var height = _screenSize.height * 0.25;
    var width = _screenSize.width * 0.697;

    return InkWell(
      onTap: () {
        setState(() {
          isClicked1 = !isClicked1;
        });
      },
      child: Container(
        color: isClicked1 ? Colors.transparent : Colors.blue[50],

        child: Container(
          margin: const EdgeInsets.only(left: 20),
          padding: const EdgeInsets.only(right: 20),
          height: height,
          width: width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.menu.toString()),
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      // Provider.of<IconFavorite>(context).changeIcon();
                      setState(() {
                        isClicked2 = !isClicked2;
                      });
                    },
                    icon: Icon(
                      isClicked2 ? Icons.favorite_border : Icons.favorite,
                      color: Colors.redAccent[100],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: typeList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 5),
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GreyText(text: typeList[index]),
                        GreyText(text: valueList[index]),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
