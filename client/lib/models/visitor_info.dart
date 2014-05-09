part of models;

// Visitor information
class VisitorInfo {
  VisitorInfo(this.Count);
  VisitorInfo.fromJson(Map map) {
    Count = map[countTag];
  }

  int Count;

  dynamic toJson() => {
    countTag: Count
  };

  static const String countTag = "Count";
}
