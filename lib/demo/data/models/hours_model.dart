class HoursModel {
  HoursModel({
    required this.open,
    required this.close,
  });

  String open;
  String close;

  factory HoursModel.fromJson(Map<String, dynamic> json) => HoursModel(
        open: json["open"],
        close: json["close"],
      );

  Map<String, dynamic> toJson() => {
        "open": open,
        "close": close,
      };
}
