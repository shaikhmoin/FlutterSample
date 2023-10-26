// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:firstfluttervscodeproj/models/Product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    print("Selected Product: ${agrs.product.title}");
    print("Selected Product: ${agrs.product.price}");

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(agrs.product.title),
        leading: InkWell(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      // body: BodyHome(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
