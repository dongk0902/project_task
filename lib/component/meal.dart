import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 30, 700),
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
