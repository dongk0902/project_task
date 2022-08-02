import 'package:flutter/material.dart';

class MenuColumn extends StatelessWidget {
  final String typeValue;
  final String ingredientValue;
  final String doseValue;
  final String kcalValue;

  const MenuColumn({
    required this.typeValue,
    required this.ingredientValue,
    required this.doseValue,
    required this.kcalValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuRow(nameText: '종류', valueText: typeValue),
        const SizedBox(height: 5),
        MenuRow(nameText: '재료', valueText: ingredientValue),
        const SizedBox(height: 5),
        MenuRow(nameText: '정량', valueText: doseValue),
        const SizedBox(height: 5),
        MenuRow(nameText: '칼로리', valueText: kcalValue),
      ],
    );
  }
}

class MenuRow extends StatelessWidget {
  final String nameText;
  final String valueText;

  const MenuRow({
    required this.nameText,
    required this.valueText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.grey);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nameText,
          style: textStyle,
        ),
        Text(
          valueText,
          style: textStyle,
        ),
      ],
    );
  }
}
