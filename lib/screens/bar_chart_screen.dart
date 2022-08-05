import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Exam2 extends StatelessWidget {
  const Exam2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: BarChartExam(),
    );
  }
}

class BarChartExam extends StatelessWidget {
  const BarChartExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide _borderSide = BorderSide(width: 1);
    return Column(
      children: [
        SizedBox(height: 20),
        Expanded(
          child: BarChart(
            BarChartData(
              borderData: FlBorderData(
                border: Border(
                    top: BorderSide.none,
                    bottom: _borderSide,
                    left: _borderSide,
                    right: _borderSide),
              ),
              maxY: 100,
              barGroups: [
                BarChartGroupData(
                  x: 1,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 10,
                      width: 20,
                      color: Colors.red,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 20,
                      width: 20,
                      color: Colors.orange,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 3,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 30,
                      width: 20,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 4,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 40,
                      width: 20,
                      color: Colors.green,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 5,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 50,
                      width: 20,
                      color: Colors.blue,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 6,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 60,
                      width: 20,
                      color: Colors.indigo,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 7,
                  barsSpace: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 70,
                      width: 20,
                      color: Colors.indigo[900],
                    ),
                  ],
                ),
              ],
              groupsSpace: 16,
              alignment: BarChartAlignment.spaceBetween,
            ),
            swapAnimationDuration: Duration(milliseconds: 150),
            swapAnimationCurve: Curves.bounceInOut,
          ),
        ),
      ],
    );
  }
}

// class BarChartExam extends StatelessWidget {
//   const BarChartExam({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(30),
//       child: BarChart(
//         BarChartData(
//           borderData: FlBorderData(
//             border: const Border(
//               top: BorderSide.none,
//               right: BorderSide.none,
//               left: BorderSide(width: 1),
//               bottom: BorderSide(width: 1),
//             ),
//           ),
//           groupsSpace: 10,
//           barGroups: [
//             BarChartGroupData(
//               x: 1,
//               barRods: [
//                 BarChartRodData(toY: 10, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 2,
//               barRods: [
//                 BarChartRodData(toY: 9, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 3,
//               barRods: [
//                 BarChartRodData(toY: 4, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 4,
//               barRods: [
//                 BarChartRodData(toY: 2, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 5,
//               barRods: [
//                 BarChartRodData(toY: 13, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 6,
//               barRods: [
//                 BarChartRodData(toY: 17, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 7,
//               barRods: [
//                 BarChartRodData(toY: 19, width: 15, color: Colors.amber),
//               ],
//             ),
//             BarChartGroupData(
//               x: 8,
//               barRods: [
//                 BarChartRodData(toY: 21, width: 15, color: Colors.amber),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
