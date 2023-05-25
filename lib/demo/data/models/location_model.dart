class LocationModel {
  LocationModel({
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
  });

  String address;
  String city;
  String state;
  String zipCode;

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        address: json["address"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zip code"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "city": city,
        "state": state,
        "zip code": zipCode,
      };
}
