import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:future/data/model/productmodel.dart';

class ReadData1 {
  Future<List<Product>> loadData() async {
    var data = await rootBundle.loadString("assets/files/productlist.json");
    var dataJson = jsonDecode(data);
    return (dataJson['data1'] as List).map((e) => Product.fromJson(e)).toList();
  }
}
