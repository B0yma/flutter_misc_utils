import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerImage extends StatelessWidget {
  final Widget? child;

  const ShimmerImage({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFEAEDF0),
      highlightColor: const Color(0xFFF1F4F8),
      child: child ?? Container(color: Colors.white),
    );
  }
}
