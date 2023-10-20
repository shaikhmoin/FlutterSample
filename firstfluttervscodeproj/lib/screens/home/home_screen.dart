// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
    static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home"),
        leading: InkWell(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: BodyHome(),
    );
  }
}