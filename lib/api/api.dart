class Api {
  static List<Map<String, String>> users = [
    {"username": "Yashar", "password": "123456"},
  ];

  static Future<bool> login(String username, String password) {
    return Future.delayed(const Duration(seconds: 1), () {
      for (var element in users) {
        if (element["username"] == username &&
            element["password"] == password) {
          return true;
        }
      }
      return false;
    });
  }

  static Future<bool> register(String username, String password) {
    return Future.delayed(const Duration(seconds: 1), () {
      for (var element in users) {
        if (element["username"] == username &&
            element["password"] == password) {
          return false;
        }
      }
      users.add({"username": username, "password": password});
      return true;
    });
  }

}

class Item {
  late final int _discountedPrice;
  late final int _price;
  late final String _image;
  late final String _name;

  //getters
  int get discountedPrice => _discountedPrice;
  int get price => _price;
  String get image => _image;
  String get name => _name;

  Item(
      {required discountedPrice,
      required price,
      required image,
      required name}) {
    _discountedPrice = discountedPrice;
    _price = price;
    _image = image;
    _name = name;
  }
}
