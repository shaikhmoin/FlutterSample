// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({super.key});

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6, //60% of our width
                    // height: 50,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenWidth(9),
                          )
                      )
                    ),
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
