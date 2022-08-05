import 'package:flutter/material.dart';

class ElevatedPushButton extends StatefulWidget {
  final Widget screen;
  final Widget child;

  const ElevatedPushButton({
    required this.screen,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<ElevatedPushButton> createState() => _ElevatedPushButtonState();
}

class _ElevatedPushButtonState extends State<ElevatedPushButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => widget.screen,
          ),
        );
      },
      child: widget.child,
    );
  }
}
