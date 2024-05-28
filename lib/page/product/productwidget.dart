import 'package:flutter/widgets.dart';
import 'package:future/config/const.dart';
import 'package:future/data/model/productmodel.dart';
import 'package:future/data/provider/productprovider.dart';
import 'package:future/page/product/productbody.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  List<Product> lstProd = [];
  Future<String> loadProdList() async {
    lstProd = await ReadData1().loadData();
    return '';
  }

  @override
  void initState() {
    super.initState();
    loadProdList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadProdList(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return Center(
            child: Column(
              children: [
                const Text(
                  "Product list",
                  style: titleStyle,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: lstProd.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return itemProdView(lstProd[index]);
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
