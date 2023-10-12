
import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: SizedBox(
        width: double.infinity,
        child: Column(
         children: <Widget>[
           Expanded(
             flex: 3,
             child: Column(
              children: <Widget>[
                Text(
                  "TOKYO",
                  style: TextStyle(
                   fontSize: getProportionateScreenWidth(36),
                   color: kPrimaryColor,
                   fontWeight: FontWeight.bold,
                 )
               ),
               const Text("Detail description")
             ],
           ),
         ),
         const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
    ],
    ),
    )
    );
  }
}