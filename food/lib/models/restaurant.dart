import 'food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu
  );

  static Restaurant generateRestaurant() {
    return Restaurant("Restaurant", "20-30mins", "2.4km", "Restaurant", "assets/images/res_logo.png", 
    "Orange sandwish is delicious", 4.7, {
      'Recommeded': Food.generateRecommendedFood(),
      'Popular': Food.generatePopularFood(),
      'Noodles': Food.generatePopularFood(),
      'Pizza': []
    });
  }

}