import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';
import 'package:food_ninja/widgets/textField_widget.dart';
import 'package:get/get.dart';

class SignUpProcessView extends StatelessWidget {
  const SignUpProcessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? colormode = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;

    return Scaffold(
      backgroundColor: colormode,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: colormode,
            child:
                const Image(image: AssetImage('assets/images/splash_bg.png')),
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
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(children: [
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0x44F9A84D)),
                        child: const Icon(Icons.arrow_back_ios_outlined,
                            color: Color(0xffDA6317))),
                      onTap: ()=>Get.back(),
                    )]),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Text('Fill in your bio to get started',
                          style: TextStyle(fontSize: 25,fontFamily: 'BentonSansBookBold')),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Text(
                          'This data will be displayed in your account profile for security',
                          style: TextStyle(fontFamily: 'BentonSansBook',fontSize: 15)),
                    ),
                    Column(children: const [
                      TextFieldWidget(label: 'First Name', mode: 1),
                      TextFieldWidget(label: 'Last Name', mode: 1),
                      TextFieldWidget(label: 'Mobile Number', mode: 1),
                    ]),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: GradientButtonWidget(lable: 'Next', onClickMode: 1, toPage: Routes.paymentMethodRoute),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
