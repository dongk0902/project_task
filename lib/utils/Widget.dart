import 'package:flutter/material.dart';

import '../component/barChart.dart';
import '../component/pieChart.dart';

Widget getPie(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return Pie();
  } else {
    return SizedBox(height: 0);
  }
}

Widget getText(dynamic index, var mealList, BuildContext context) {
  if (index + 1 == mealList.length) {
    return Text('다량영양소');
  } else {
    return SizedBox(height: 0);
  }
}

Widget getButton1(dynamic index, var mealList, BuildContext context) {
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
    return SizedBox(height: 0);
  }
}

Widget getButton2(dynamic index, var mealList, BuildContext context) {
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
    return SizedBox(height: 0);
  }
}
