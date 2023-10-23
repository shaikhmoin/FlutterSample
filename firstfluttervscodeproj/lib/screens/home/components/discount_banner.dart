import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(8)),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Text(
            "A Summer Surprise",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          Text(
            "Cashback 20%",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(26),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Add more Text widgets as needed
        ],
      ),
    );
  }
}
