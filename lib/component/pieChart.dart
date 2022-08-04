import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Pie extends StatefulWidget {
  const Pie({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieState();
}

class PieState extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
            pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            }),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: showingSections()),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 15.0;
      final radius = isTouched ? 110.0 : 100.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 35.85,
            title: '단백질 35.85%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.teal[300],
            value: 35.85,
            title: '지방 35.85%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.amber[600],
            value: 28.30,
            title: '탄수화물 28.30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        default:
          throw 'Error~';
      }
    });
  }
}
