class ApiUrl {
  static const url = 'https://www.wist.somee.com/api/';
}

enum ApiPaths {
  getFoods,
  getProducts;

  String get fullPath {
    switch (this) {
      case ApiPaths.getFoods:
        return '${ApiUrl.url}${PathOfApi.foods}';
      case ApiPaths.getProducts:
        return '${ApiUrl.url}${PathOfApi.getProducts}';
    }
  }
}

class PathOfApi {
  static const foods = 'FoodS';
  static const getProducts = 'products';
}
