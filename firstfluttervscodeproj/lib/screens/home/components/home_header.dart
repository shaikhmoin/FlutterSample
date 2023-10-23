// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/home/components/icon_btn_with_counter.dart';
import 'package:firstfluttervscodeproj/screens/home/components/search_field.dart';
import 'package:firstfluttervscodeproj/screens/home/home_screen.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () =>
                Navigator.pushNamed(context, HomeScreen.routeName),
            numOfitem: 0,
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}