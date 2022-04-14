import 'package:flutter/material.dart';
import 'package:food_ninja/utils/Routes_util.dart';
import 'package:food_ninja/views/SplashScreen_view.dart';
import 'package:food_ninja/views/login_view.dart';
import 'package:food_ninja/views/onBoarding_view.dart';
import 'package:food_ninja/views/paymentMethod_view.dart';
import 'package:food_ninja/views/register_view.dart';
import 'package:food_ninja/views/signUpProcess_view.dart';
import 'package:food_ninja/views/signUpSuccessNotification_view.dart';
import 'package:food_ninja/views/uploadPhoto_view.dart';
import 'package:get/route_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightGreen,
        // textTheme: GoogleFonts.vigaTextTheme(ThemeData.light().textTheme),
        fontFamily: 'BentonSans',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // textTheme: GoogleFonts.vigaTextTheme(ThemeData.dark().textTheme),
        fontFamily: 'BentonSans',
      ),
      initialRoute: Routes.splashScreenRoute,
      routes: {
        Routes.splashScreenRoute: (context) => SplashScreenView(),
        Routes.onBoardingRoute: (context) => OnBoardingView(),
        Routes.loginRoute: (context) => LoginView(),
        Routes.registerRoute: (context) => RegisterView(),
        Routes.signUpProcessRoute: (context) => SignUpProcessView(),
        Routes.paymentMethodRoute: (context) => PaymentMethodView(),
        Routes.uploadPhotoRoute: (context) => UploadPhotoView(),
        Routes.signUpSuccessNotificationRoute: (context) => SignUpSuccessNotificationView(),
      },
    );
  }
}
