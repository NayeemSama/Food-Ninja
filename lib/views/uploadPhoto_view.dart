import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/widgets/gradientButton_widget.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoView extends StatefulWidget {
  const UploadPhotoView({Key? key}) : super(key: key);

  @override
  State<UploadPhotoView> createState() => _UploadPhotoViewState();
}

class _UploadPhotoViewState extends State<UploadPhotoView> {
  File? imageFile;
  var value = false;

  @override
  Widget build(BuildContext context) {
    Color? colormode = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;

    Color? colormodecard = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.grey.shade900;

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    onTap: () => Get.back(),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const Text('Upload Your Photo Profile',
                        style: TextStyle(
                            fontSize: 25, fontFamily: 'BentonSansBookBold')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const Text(
                        'This data will be displayed in your account profile for security',
                        style: TextStyle(
                            fontFamily: 'BentonSansBook', fontSize: 15)),
                  ),
                  const SizedBox(height: 50),
                  imageFile != null
                      ? Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Stack(alignment: Alignment.topRight, children: [
                                Container(
                                  child: Image.file(
                                    imageFile!,
                                    scale: 7.5,
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  width: 200,
                                  height: 200,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              imageFile = null;
                                            });
                                          },
                                          backgroundColor: const Color(0x88FEFEFF),
                                          child: const Icon(
                                            Icons.clear,
                                            color: Colors.white,
                                            size: 20,
                                          ))),
                                ),
                              ]),
                            ],
                          ),
                        )
                      : Column(children: [
                          Card(
                            color: colormodecard,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            elevation: 20,
                            shadowColor: const Color(0x445A6CEA),
                            child: Container(
                              width: Get.width,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(18)),
                                  color: colormodecard),
                              child: MaterialButton(
                                  splashColor: colormodecard,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  onPressed: () {
                                    setState(() {
                                      getFromGallery();
                                      value = true;
                                    });
                                  },
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                            'assets/images/images_logo.png',
                                            scale: 2.4),
                                        const Text('From Gallery',
                                            style: TextStyle(
                                                fontFamily:
                                                    'BentonSansBookBold'))
                                      ])),
                            ),
                          ),
                          Card(
                            color: colormodecard,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            elevation: 20,
                            shadowColor: const Color(0x445A6CEA),
                            child: Container(
                              width: Get.width,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(18)),
                                  color: colormodecard),
                              child: MaterialButton(
                                  splashColor: colormodecard,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  onPressed: () {
                                    getFromCamera();
                                  },
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                            'assets/images/camera_logo.png',
                                            scale: 2.4),
                                        const Text('Take Photo',
                                            style: TextStyle(
                                                fontFamily:
                                                    'BentonSansBookBold'))
                                      ])),
                            ),
                          ),
                        ]),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: GradientButtonWidget(
          lable: 'Next', onClickMode: 1, toPage: Routes.signUpSuccessNotificationRoute),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

}
