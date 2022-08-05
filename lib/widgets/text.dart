import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  final String text;

  const GreyText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey),
    );
  }
}

