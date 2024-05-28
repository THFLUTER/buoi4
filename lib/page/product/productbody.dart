import 'package:flutter/material.dart';
import 'package:future/config/const.dart';
import 'package:future/data/model/productmodel.dart';
import 'package:intl/intl.dart';

Widget itemProdView(Product itemprod) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(color: Colors.grey.shade200),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          urlimg + itemprod.img!,
          height: 80,
          width: 80,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.image),
        ),
        Text(
          itemprod.name ?? '',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          NumberFormat('###,###.###').format(itemprod.price),
          style: const TextStyle(fontSize: 15, color: Colors.blue),
        ),
        Text(
          itemprod.desc!,
          style: const TextStyle(
              fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ],
    ),
  );
}
