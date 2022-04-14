import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';
import 'package:food_ninja/widgets/gradientText_widget.dart';
import 'package:food_ninja/widgets/textField_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  var flag = true;

  @override
  Widget build(BuildContext context) {

    Color? colormode=Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;

    Color? colormodeRev=Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;

    return Scaffold(
      backgroundColor: colormode,
      body: Stack(children: [
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
        SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(minHeight: MediaQueryData.fromWindow(window).size.height),
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
                      padding: EdgeInsets.all(20),
                      child: Text('Login To Your Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20)),
                    ),
                    TextFieldWidget(label: 'Email', mode: 1),
                    TextFieldWidget(label: 'Password', mode: 3),
                  ]),
                  const Padding(
                    padding: const EdgeInsets.all(10),
                    child: const Text('Or Continue With',style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),backgroundColor: MaterialStateProperty.all(Colors.white)),onPressed: (){}, label: Text('FaceBook',style: TextStyle(color: Colors.blue),),
                        //     icon: const Icon(Icons.facebook,color: Colors.blue)),
                        // ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),backgroundColor: MaterialStateProperty.all(Colors.white)),onPressed: (){}, label: Text('Google'),
                        //     icon: const Icon(FontAwesomeIcons.googleDrive)),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18))),
                          elevation: 20,
                          shadowColor: const Color(0x445A6CEA),
                          child: InkWell(
                            borderRadius: const BorderRadius.all(Radius.circular(18)),
                            splashColor: colormode,
                            onTap: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(18)),
                                  color: colormode),
                              child: Container(
                                height: 50,
                                width: 120,
                                margin: const EdgeInsets.only(left: 15, right: 15),
                                // constraints: BoxConstraints(maxHeight: 80),
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                        'assets/images/facebook-480_logo.png',
                                        fit: BoxFit.contain,
                                        height: 30),
                                    Text(
                                      'FaceBook',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: colormodeRev,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          elevation: 20,
                          shadowColor: const Color(0x445A6CEA),
                          child: InkWell(
                            borderRadius: const BorderRadius.all(Radius.circular(18)),
                            splashColor: colormode,
                            onTap: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(18)),
                                  color: colormode),
                              child: Container(
                                height: 50,
                                width: 100,
                                margin: const EdgeInsets.only(left: 15, right: 15),
                                // constraints: BoxConstraints(maxHeight: 80),
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                        'assets/images/google-480_logo.png',
                                        fit: BoxFit.contain,
                                        height: 30),
                                    Text(
                                      'Google',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: colormodeRev
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(onTap: (){},child: const Text('Forgot Your Password?',style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GradientButtonWidget(lable: "Login", toPage: Routes.registerRoute, onClickMode: 1),
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
