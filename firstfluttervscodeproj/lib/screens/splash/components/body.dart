import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/screens/SignIn/sign_in_screen.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';
import '../components/splash_content.dart'; //This is the best practice
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,

                //used for multiple swipable scroll
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,

                  //Extract widget and create SplashContent class
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDOT(index: index),
                      ),
                    ),
                    const Spacer(flex: 5),
                    DefaultButton(
                      text: "Continue",
                      press: () =>
                          Navigator.pushNamed(context, SignInScreen.routeName),
                    ),
                  ],
                ), //Create method
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDOT({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kPrimaryLightColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
