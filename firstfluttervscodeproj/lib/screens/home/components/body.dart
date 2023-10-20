// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/screens/home/components/icon_btn_with_counter.dart';
import 'package:firstfluttervscodeproj/screens/home/home_screen.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            // HomeHeader(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Searchfield
                  Container(
                    width: SizeConfig.screenWidth * 0.6,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) => print(value),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20),
                              vertical: getProportionateScreenWidth(9)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Search product",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),

                  //Icons
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Cart Icon.svg",
                    press: () =>
                        Navigator.pushNamed(context, HomeScreen.routeName),
                    numOfitem: 0,
                    //press: () => Navigator.pushNamed(context, CartScreen.routeName), numOfitem: null,
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Bell.svg",
                    numOfitem: 3,
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
