import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientText_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    start();

    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.black,
        body: Stack(children: [
          Container(
              width: double.infinity,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.black,
              child: const Image(
                  image: AssetImage('assets/images/splash_bg.png'))),
          Theme.of(context).brightness == Brightness.light
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.white30,
                        Colors.white54,
                        Colors.white
                      ])),
                )
              : Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black38,
                        Colors.black54,
                        Colors.black
                      ])),
                ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 200,
                    width: 200,
                    child: Image(
                        image: AssetImage('assets/images/splash_logo.png'))),
                const GradientText('FoodNinja',
                    gradient: LinearGradient(colors: [
                      Color(0xff53E88B),
                      Color(0xff15BE77)
                    ]),
                    style: TextStyle(fontSize: 40,fontFamily: 'BentonSansBookBold')),
                Text('Deliver Favorite Food',
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ]));
  }

  void start() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.onBoardingRoute);
    });
  }
}
