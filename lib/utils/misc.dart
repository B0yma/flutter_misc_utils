import 'dart:ui';

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

extension ListStringExt on List<String?> {
  String get firstNotEmptyOrEmpty {
    final result = firstWhere((element) => element != null && element.isNotEmpty, orElse: () => '');
    return result!;
  }
}

extension StringExt on String? {
  bool get isNotNullOrEmpty => this != null && this?.isNotEmpty == true;
}

Color? parseColorOrNull(String? scolor) {
  var hexColor = scolor?.replaceAll("#", "") ?? "";
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
  return null;
}
