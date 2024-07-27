import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => ProductView());
  }

  @override
  State<StatefulWidget> createState() {
    return _ProductView();
  }

}

class _ProductView extends State<ProductView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Product View"),
      ),
      body:Container(
        child: Column (
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 0.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4.0)),
                  child:
                  Card (
                    child:
                    Image.asset(
                      "lib/images/blimp.png",
                      width: 400.0,
                    ),
                  )
              ),
            ),
            Text("Description"),
            Text("Price"),
            Text("Qty"),
            ElevatedButton(onPressed: ()=> {}, child: Text("View AR")),
          ],
        ),
      ),
    );
  }

}