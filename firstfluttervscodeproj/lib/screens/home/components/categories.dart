// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"Icons": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"Icons": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"Icons": "assets/icons/Game Icon.svg", "text": "Game"},
      {"Icons": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"Icons": "assets/icons/Discover.svg", "text": "More"},
      {"Icons": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"Icons": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"Icons": "assets/icons/Game Icon.svg", "text": "Game"},
      {"Icons": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"Icons": "assets/icons/Discover.svg", "text": "More"},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
                categories.length,
                (index) => Column(
                      children: [
                        CategoryCard(
                            icon: categories[index]["Icons"],
                            text: categories[index]["text"],
                            press: () {}),
                        SizedBox(
                            width: getProportionateScreenWidth(50)), // Add the same spacing between items
                      ],
                    )),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        child: SizedBox(
          width: getProportionateScreenWidth(55),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container( 
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(icon),
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
