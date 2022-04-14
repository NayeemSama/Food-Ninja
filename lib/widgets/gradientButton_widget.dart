import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:get/get.dart';

class GradientButtonWidget extends StatefulWidget {
  // const GradientButtonWidget({Key? key}) : super(key: key);


  //onClickModes=>
  //(1) => toPage
  //(2) => toPage & validate
  //(3) => pageController

  String lable;
  int onClickMode;
  PageController? pageController;
  String toPage;

  GradientButtonWidget({required this.lable, required this.onClickMode, required this.toPage, this.pageController});

  @override
  State<GradientButtonWidget> createState() => _GradientButtonWidgetState();
}

class _GradientButtonWidgetState extends State<GradientButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width/2,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff53E88B),
            Color(0xff15BE77)
          ],
        ),
      ),
      child: MaterialButton(
        splashColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        onPressed: (){
          print('object');
          if(widget.onClickMode==1){
            Get.toNamed(widget.toPage);
          }
          else if(widget.onClickMode==2){
            print('object2');
          }
          else if(widget.onClickMode==3){
            Future.delayed(const Duration(seconds: 2), () {
              widget.pageController?.page == 1
                  ? Get.offNamed(widget.toPage)
                  : widget.pageController?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            });
          }
          else{
            print('else');
          }
        },
        child: Text(
          widget.lable.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
