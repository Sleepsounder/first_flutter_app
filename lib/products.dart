import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('Product Widget Constructer');
  }

  @override
  Widget build(BuildContext context) {
    print("Product Widget build");
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food2.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
