import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/bottom_navbar/appFragment.dart';
import 'package:ambica/screens/bottom_navbar/bindings.dart';
import 'package:ambica/screens/home/meetingCircular/bindings/bindings.dart';
import 'package:ambica/screens/home/memberCare/bindings/bindings.dart';
import 'package:ambica/screens/inroduction/Introduction1.dart';
import 'package:ambica/screens/inroduction/Introduction2.dart';
import 'package:ambica/screens/signIn/phone_OTP.dart';
import 'package:ambica/screens/signIn/signInView.dart';
import 'package:ambica/screens/splash/binding.dart';
import 'package:ambica/screens/splash/views/splashScreen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.INTRODUCTION1,
      page: () => Introduction1(),
    ),
    GetPage(
      name: Routes.INTRODUCTION2,
      page: () => Introduction2(),
    ),

    GetPage(
      name: Routes.SIGN_IN,
      page: () => SignInView(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OTP(),
    ),

    GetPage(
      name: Routes.APP_FRAGMENT,
      page: () => AppFragment(),
      bindings: [
        BottomNavBinding(),
        MemberCareBindings(),
        MeetingCircularbindings(),
      ],
    ),
  ];
}
