import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  final String firstText;
  final String secondText;

  const MenuRow({
    required this.firstText,
    required this.secondText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.grey);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: textStyle,
        ),
        Text(
          secondText,
          style: textStyle,
        ),
      ],
    );
  }
}
