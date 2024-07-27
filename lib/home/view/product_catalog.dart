import 'package:blimp/model/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCatalog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCatalog();
  }

}

class _ProductCatalog extends State<ProductCatalog> {

  late Products _products ;

  @override
  void initState() {

    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("Product 1"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Product 2'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Product 3'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Product 4'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Product 5'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Product 6'),
          ),
        ],
      ),
    );
  }

}