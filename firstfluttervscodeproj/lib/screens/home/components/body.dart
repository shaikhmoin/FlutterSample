// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, unused_local_variable

import 'package:firstfluttervscodeproj/screens/home/components/categories.dart';
import 'package:firstfluttervscodeproj/screens/home/components/discount_banner.dart';
import 'package:firstfluttervscodeproj/screens/home/components/home_header.dart';
import 'package:firstfluttervscodeproj/screens/home/components/section_title.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(30)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            // SpecialOffers(),
            SectionTitle(
              text: 'Special for you',
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 2.png",
                    category: "Smartphone",
                    numOfBrands: 18,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 3.png",
                    category: "Fashion",
                    numOfBrands: 24,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 2.png",
                    category: "Smartphone",
                    numOfBrands: 18,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 3.png",
                    category: "Fashion",
                    numOfBrands: 24,
                    press: () {},
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard(
      {super.key,
      required this.category,
      required this.image,
      required this.numOfBrands,
      required this.press});

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
