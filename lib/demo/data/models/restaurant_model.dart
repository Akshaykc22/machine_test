import 'dish_model.dart';
import 'hours_model.dart';
import 'location_model.dart';

class RestaurantListModel {
  RestaurantListModel({
    required this.restaurants,
    required this.dishes,
  });

  List<RestaurantModel> restaurants;
  List<DishModel> dishes;

  factory RestaurantListModel.fromJson(Map<String, dynamic> json) =>
      RestaurantListModel(
        restaurants: List<RestaurantModel>.from(
            json["restaurants"].map((x) => RestaurantModel.fromJson(x))),
        dishes: List<DishModel>.from(
            json["dishes"].map((x) => DishModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
        "dishes": List<dynamic>.from(dishes.map((x) => x.toJson())),
      };
}

class RestaurantModel {
  RestaurantModel({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.rating,
    required this.location,
    required this.hours,
    required this.website,
    required this.phoneNumber,
  });

  String name;
  String cuisine;
  String price;
  double rating;
  LocationModel location;
  HoursModel hours;
  String website;
  String phoneNumber;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      RestaurantModel(
        name: json["name"],
        cuisine: json["cuisine"],
        price: json["price"],
        rating: json["rating"].toDouble(),
        location: LocationModel.fromJson(json["location"]),
        hours: HoursModel.fromJson(json["hours"]),
        website: json["website"],
        phoneNumber: json["phone number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "cuisine": cuisine,
        "price": price,
        "rating": rating,
        "location": location.toJson(),
        "hours": hours.toJson(),
        "website": website,
        "phone number": phoneNumber,
      };
}
