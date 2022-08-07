import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StackedBarChart extends StatefulWidget {
  const StackedBarChart({Key? key}) : super(key: key);

  @override
  State<StackedBarChart> createState() => _StackedBarChartState();
}

class _StackedBarChartState extends State<StackedBarChart> {
  late List<NutritionData>? _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        title: ChartTitle(
          text: '다량영양소',
          alignment: ChartAlignment.near,
          borderWidth: 10,
          textStyle: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          StackedBar100Series<NutritionData, String>(
              dataSource: _chartData!,
              xValueMapper: (NutritionData nut, _) => nut.nutritionCategory,
              yValueMapper: (NutritionData nut, _) => nut.real,
              name: '비율',
              color: Colors.tealAccent[400]),
          StackedBar100Series<NutritionData, String>(
              dataSource: _chartData!,
              xValueMapper: (NutritionData nut, _) => nut.nutritionCategory,
              yValueMapper: (NutritionData nut, _) => nut.oh,
              name: '전체 값',
              color: Colors.grey[100]),
        ],
        primaryXAxis: CategoryAxis());
  }

  List<NutritionData>? getChartData() {
    final List<NutritionData> chartData = [
      NutritionData('총 포화지방산', 48, 100),
      NutritionData('콜레스테롤', 48, 100),
      NutritionData('총 식이섬유', 24, 100),
      NutritionData('지방', 51, 100),
      NutritionData('단백질', 65, 100),
      NutritionData('탄수화물', 24, 100),
    ];
    return chartData;
  }
}

class NutritionData {
  final String nutritionCategory;
  final num real;
  final num oh;

  NutritionData(
    this.nutritionCategory,
    this.real,
    this.oh,
  );
}

class d extends StatelessWidget {
  const d({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'gkdl',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
