import 'package:flutter/material.dart';

class DefText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final Color? textColor;
  final String? fontFamily;
  final bool isCentered;
  final int maxLine;
  final double latterSpacing;
  final bool textAllCaps;
  final bool isLongText;
  final bool lineThrough;

  const DefText({
    Key? key,
    this.text,
    this.fontSize = 18,
    this.textColor,
    this.fontFamily,
    this.isCentered = false,
    this.maxLine = 1,
    this.latterSpacing = 0.5,
    this.textAllCaps = false,
    this.isLongText = false,
    this.lineThrough = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAllCaps ? text!.toUpperCase() : text!,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: textColor ?? Theme.of(context).colorScheme.secondary,
        height: 1.5,
        letterSpacing: latterSpacing,
        decoration: lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}