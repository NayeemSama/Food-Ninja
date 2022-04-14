import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';
import 'package:food_ninja/widgets/gradientText_widget.dart';
import 'package:lottie/lottie.dart';

class SignUpSuccessNotificationView extends StatelessWidget {

  const SignUpSuccessNotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color? colormode = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;

    return Scaffold(
      backgroundColor: colormode,
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
          Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(constraints: BoxConstraints(maxWidth: 300,maxHeight: 300),child: Lottie.asset('assets/animations/signUp_success.json',repeat: false)),
              const GradientText('Congrats!',
                  gradient: LinearGradient(colors: [
                    Color(0xff53E88B),
                    Color(0xff15BE77)
                  ]),
                  style: TextStyle(fontSize: 40,fontFamily: 'BentonSansBookBold')),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Your Profile Is Ready To Use',style: TextStyle(fontSize: 23,fontFamily: 'BentonSansBookBold')),
              ),
            ]),
          ),
          
        ],
      ),
      floatingActionButton: GradientButtonWidget(lable: 'Try Order', onClickMode: 1, toPage: Routes.loginRoute),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
//Lottie.network('https://assets9.lottiefiles.com/datafiles/3RKIaYNZqu6RrV0/data.json',repeat: false)
// Lottie.asset('assets/animations/signUp_success.json')
