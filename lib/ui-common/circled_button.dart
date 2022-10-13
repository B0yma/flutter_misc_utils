import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final Widget child;
  final Function onClick;

  const CircledButton({
    Key? key,
    required this.child,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        customBorder: const CircleBorder(),
        child: child,
        onTap: () {
          onClick();
        },
      ),
    );
  }
}
