import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.55;
    var width = MediaQuery.of(context).size.width * 0.85;
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChartLine(
                title: '탄수화물',
                rate: 0.24,
                chartColor: Colors.blue[700],
                number: 24,
              ),
              ChartLine(
                title: '단백질',
                rate: 0.65,
                chartColor: Colors.blue[400],
                number: 65,
              ),
              ChartLine(
                title: '지방',
                rate: 0.51,
                chartColor: Colors.blue[300],
                number: 51,
              ),
              ChartLine(
                title: '총 식이섬유',
                rate: 0.24,
                chartColor: Colors.teal[200],
                number: 24,
              ),
              ChartLine(
                title: '콜레스테롤',
                rate: 0.48,
                chartColor: Colors.tealAccent[700],
                number: 48,
              ),
              ChartLine(
                title: '총 포화 지방산',
                rate: 0.48,
                chartColor: Colors.tealAccent[400],
                number: 48,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        '다량영양소',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black87,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  final String title;
  final double rate;
  final int? number;
  final Color? chartColor;

  const ChartLine({
    Key? key,
    required this.title,
    required this.rate,
    required this.chartColor,
    this.number,
  })  : assert(title != null),
        assert(rate != null),
        assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.03;
    var width = MediaQuery.of(context).size.width * 0.74;

    return LayoutBuilder(builder: (context, constraints) {
      final lineWidget = constraints.maxWidth * rate;
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: lineWidget),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey[200],
                      height: height,
                      width: width,
                    ),
                    Text(
                      '100%',
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
                AnimatedContainer(
                  color: chartColor,
                  height: height,
                  width: lineWidget,
                  duration: Duration(seconds: 2),
                  curve: Curves.linear,
                  child: Text(
                    number.toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
