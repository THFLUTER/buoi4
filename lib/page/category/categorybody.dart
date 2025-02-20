import 'package:flutter/widgets.dart';
import 'package:future/config/const.dart';
import 'package:future/data/model/categorymodel.dart';

Widget itemCateView(Category itemcate) {
  return Container(
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.symmetric(vertical: 4),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 139, 171, 231)),
    child: Container(
      width: 150,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        urlimg + itemcate.img!,
        fit: BoxFit.cover,
      ),
    ),
  );
}
