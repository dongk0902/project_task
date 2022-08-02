import 'package:flutter/material.dart';

class RenderTextButton extends StatelessWidget {
  final Widget child;

  const RenderTextButton({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: child,
    );
  }
}
