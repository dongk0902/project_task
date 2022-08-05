import 'package:flutter/material.dart';
import 'package:project_task/screens/bar_chart_screen.dart';
import '../utils/pie.dart';

Widget renderPie(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return Pie();
  } else {
    return SizedBox.shrink();
  }
}

Widget renderText(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return Text('다량영양소');
  } else {
    return SizedBox.shrink();
  }
}

Widget renderButton1(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Exam2(),
          ),
        );
      },
      child: Text('Fl_Bar chart'),
    );
  } else {
    return SizedBox.shrink();
  }
}

Widget renderButton2(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ListView(),
          ),
        );
      },
      child: Text('리스트 뷰'),
    );
  } else {
    return SizedBox.shrink();
  }
}