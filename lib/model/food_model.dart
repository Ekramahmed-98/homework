
class Food {
  int? id ;
  String? name;
  double? price;
  String? image;
  double? rate ;

  Food({
    required this.id ,
    required this.name,
    required this.price,
    required this.image,
    required this.rate,
  });

  Food.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['title'];
    price = double.parse(json['price'].toString());
    image = json['image'];
    rate = double.parse(json['rate'].toString());

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = name;
    data['price'] = price;
    data['rate'] = rate;
    data['image'] = image;
    return data;
  }

}
List<Food> foodData = [
  Food(
    id: 0,
    image: 'assets/images/salad.png',
    name: 'saled',
    price: 155,
    rate: 5.2,

  )
];





