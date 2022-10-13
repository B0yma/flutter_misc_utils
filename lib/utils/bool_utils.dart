extension StBoolExt on String? {
  bool parseBool() {
    if (this?.toLowerCase() == "true" || this == "1") {
      return true;
    }
    if (this?.toLowerCase() == "false" || this == "0") {
      return false;
    }
    return false;
  }
}
