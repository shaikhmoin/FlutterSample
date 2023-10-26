// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, unused_local_variable

import 'package:firstfluttervscodeproj/screens/home/components/categories.dart';
import 'package:firstfluttervscodeproj/screens/home/components/discount_banner.dart';
import 'package:firstfluttervscodeproj/screens/home/components/home_header.dart';
import 'package:firstfluttervscodeproj/screens/home/components/popular_products.dart';
import 'package:firstfluttervscodeproj/screens/home/components/special_offers.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(20)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20)),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}