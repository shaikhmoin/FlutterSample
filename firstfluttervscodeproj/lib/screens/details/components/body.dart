// ignore_for_file: camel_case_types

import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/models/Product.dart';
import 'package:firstfluttervscodeproj/size_config.dart';

import 'package:flutter/material.dart';

class BodyDetails extends StatefulWidget {
  final Product product;

  const BodyDetails({super.key, required this.product});

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: widget.product);
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[0]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  Container buildSmallPreview(int index) {
    return Container(
      margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
      padding: EdgeInsets.all(getProportionateScreenHeight(5)),
      height: getProportionateScreenWidth(48),
      width: getProportionateScreenWidth(48),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  selectedImage == index ? kPrimaryColor : Colors.transparent)),
      child: Image.asset(widget.product.images[index]),
    );
  }
}
