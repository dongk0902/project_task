import 'package:flutter/material.dart';

Widget ifList(dynamic index, var listValue, var returnValue) {
  if (index + 1 == listValue.length) {
    return returnValue;
  } else {
    return SizedBox.shrink();
  }
}