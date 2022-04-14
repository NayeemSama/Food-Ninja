import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/checkBoxText_widget.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';
import 'package:food_ninja/widgets/gradientText_widget.dart';
import 'package:food_ninja/widgets/textField_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color colormode = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;

    return Scaffold(
      backgroundColor: colormode,
      body: Stack(children: [
        Container(
          width: double.infinity,
          color: colormode,
          child: const Image(image: AssetImage('assets/images/splash_bg.png')),
        ),
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
        SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
                minHeight: MediaQueryData.fromWindow(window).size.height),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(
                          image: AssetImage('assets/images/splash_logo.png'))),
                  GradientText('FoodNinja',
                      gradient: LinearGradient(colors: [
                        Colors.green.shade300,
                        Colors.green.shade700,
                      ]),
                      style: const TextStyle(fontSize: 40)),
                  Text('Deliver Favorite Food',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.bold)),
                  Column(children: const [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text('Sign Up For Free',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20)),
                    ),
                    TextFieldWidget(label: 'Username', mode: 2),
                    TextFieldWidget(label: 'Email', mode: 1),
                    TextFieldWidget(label: 'Password', mode: 3),
                  ]),
                  Column(children: const [
                    CheckBoxTextWidget(lable: 'Keep Me Sign In'),
                    CheckBoxTextWidget(lable: 'Email Me About Special Pricing'),
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GradientButtonWidget(lable: "Create Account",toPage: Routes.signUpProcessRoute, onClickMode: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.loginRoute);
                        },
                        child: const Text('Already have an Account?',
                            style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
