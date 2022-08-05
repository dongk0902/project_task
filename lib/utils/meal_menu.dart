import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Icon.dart';
import 'list_data.dart';

class MealMenu extends StatelessWidget {
  final BoxBorder? mealMenuBorder;
  final String when;
  final String kcalNumber;
  final String menu;

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
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {

    var _screenSize = MediaQuery.of(context).size;
    var height = _screenSize.height * 0.25;
    var width = _screenSize.width * 0.6;

    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      height: height,
      width: width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.menu),
              IconButton(
                splashColor: Colors.white.withOpacity(0.0),
                highlightColor: Colors.white.withOpacity(0.0),
                onPressed: () {
                  // Provider.of<IconFavorite>(context).changeIcon();
                  setState(() {
                    // 이게 도대체 왜 되냐?????? 하...... 지금은 false인데 누르면 true가 된다는 거? 근데 왜 한번 더 누르면 다시 돌아오는 건데 하...
                    // bool isClicked = true; 위에 선언하고 여기에 isClicked = false; 넣는거랑 왜 다른건데......... 아... 아.... 아..........알겠다...
                    isClicked = !isClicked;
                  });
                },
                icon: Icon(
                  isClicked ? Icons.favorite_border : Icons.favorite,
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
                    Text(
                      typeList[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      valueList[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
