// ignore: unused_import
import 'dart:convert';

class Product {
  int? id;
  String? name;
  String? img;
  int? price;
  String? desc;

  Product({this.id, this.name, this.img, this.price, this.desc});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    price = json['price'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['price'] = price;
    data['desc'] = desc;
    return data;
  }
}
