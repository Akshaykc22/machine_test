class DishModel {
  DishModel({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.description,
  });

  String name;
  String cuisine;
  String price;
  String description;

  factory DishModel.fromJson(Map<String, dynamic> json) => DishModel(
        name: json["name"],
        cuisine: json["cuisine"],
        price: json["price"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "cuisine": cuisine,
        "price": price,
        "description": description,
      };
}
