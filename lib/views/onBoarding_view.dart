import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';

class OnBoardingView extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Colors.black,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            Column(children: [
              Container(constraints: const BoxConstraints(maxWidth: 350,maxHeight: 350,minHeight: 300,minWidth: 300),child: const Image(image: AssetImage('assets/images/onBoarding_illustration.png'),fit: BoxFit.scaleDown)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children:  const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Find your Comfort Food here',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22)),
                  ),
                  Text('Here You Can find a chef or dish for every taste and color. Enjoy!',style: TextStyle(fontFamily: 'BentonSansBook',fontSize: 14),textAlign: TextAlign.center),
                ]),
              )
            ]),
            Column(children: [
              Container(constraints: const BoxConstraints(maxWidth: 350,maxHeight: 350,minHeight: 300,minWidth: 300),child: const Image(image: AssetImage('assets/images/onBoarding_illustration2.png'),fit: BoxFit.scaleDown)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children:  const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Food Ninja is Where Your Comfort Food Lives',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22)),
                  ),
                  Text('Enjoy a fast and smooth food delivery at your doorstep',style: TextStyle(fontFamily: 'BentonSansBook',fontSize: 14),textAlign: TextAlign.center),
                ]),
              )
            ]),
          ],
        ),
      ),
      floatingActionButton: GradientButtonWidget(lable:"Next", pageController: pageController, toPage: Routes.registerRoute, onClickMode: 3),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    );
  }
}
