class Food{
  String name;
  String waitTime;
  String imageUrl;
  String desc;
  String cal;
  num score;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool heightLight;

  Food(
    this.name,
    this.waitTime,
    this.imageUrl,
    this.desc,
    this.cal,
    this.score,
    this.ingredients,
    this.price,
    this.quantity,
    this.about,
    {this.heightLight = false}
  );

  static List<Food> generateRecommendedFood() {
    return [
      Food("Soba Soub", "50 mins", "assets/images/dish1.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 12, 2, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth.", heightLight : true),

      Food("Soba Soub1", "50 mins1", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 42, 1, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth"),

      Food("Soba Soub1", "50 mins1", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 42, 1, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth"),

      Food("Soba Soub1", "50 mins1", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 42, 1, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth"),

      Food("Soba Soub1", "50 mins1", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 42, 1, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth"),

      Food("Soba Soub1", "50 mins1", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 42, 1, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth")
    ];
  }


  static List<Food> generatePopularFood() {
    return [
      Food("Soba Soub123", "10 mins", "assets/images/dish1.png", "No 1 in Sales", "10 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 20, 3, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth", heightLight : true),

      Food("Soba Soub", "100 mins", "assets/images/dish2.png", "No 1 in Sales", "325 kcal", 4.8, [
        {
          'Shrimp': "assets/images/ingre1.png"
        },
        {
          'Noodle': "assets/images/ingre2.png"
        },
        {
          'egg': "assets/images/ingre3.png"
        },
        {
          'Scallion': "assets/images/ingre4.png"
        }
      ], 43, 2, "Simply put, ramen is a japanese noodle soup with a combination  of a rich flavoured broth")
    ];
  }


}