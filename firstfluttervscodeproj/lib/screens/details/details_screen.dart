// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:firstfluttervscodeproj/models/Product.dart';
import 'package:firstfluttervscodeproj/screens/details/components/body.dart';
import 'package:firstfluttervscodeproj/screens/details/components/custom_app_bar.dart';
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
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: BodyDetails(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
