import 'package:flutter/material.dart';

const stdpadding = 15.0;

const stdHorizontalPadding = EdgeInsets.symmetric(horizontal: stdpadding);
const stdHorizontalTopPadding = EdgeInsets.only(left: 15, right: 15, top: 15);

extension WidgetExt on Widget {
  Widget withTopPadding({EdgeInsetsGeometry? edgeInsetsGeometry}) {
    return Padding(
      padding: edgeInsetsGeometry ?? const EdgeInsets.only(top: stdpadding),
      child: this,
    );
  }

  Widget withHorisontalPadding({EdgeInsetsGeometry? edgeInsetsGeometry}) {
    return Padding(
      padding: edgeInsetsGeometry ?? stdHorizontalPadding,
      child: this,
    );
  }

  Widget withHorizontalAndTopPadding({EdgeInsetsGeometry? edgeInsetsGeometry}) {
    return Padding(
      padding: edgeInsetsGeometry ?? stdHorizontalTopPadding,
      child: this,
    );
  }
}
