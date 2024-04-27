import 'package:e_commerce/view/screen_five/binding/screenfive_binding.dart';
import 'package:e_commerce/view/screen_five/forget_page.dart';
import 'package:e_commerce/view/screen_four/binding/screenfour_binding.dart';
import 'package:e_commerce/view/screen_four/creat_account_page.dart';
import 'package:e_commerce/view/screen_one/binding/screen_one_binding.dart';
import 'package:e_commerce/view/screen_one/screen_one.dart';
import 'package:e_commerce/view/screen_seven/binding/screenseven_binding.dart';
import 'package:e_commerce/view/screen_seven/newpass_page.dart';
import 'package:e_commerce/view/screen_six/binding/screensix_binding.dart';
import 'package:e_commerce/view/screen_six/code_verify_page.dart';
import 'package:e_commerce/view/screen_three/binding/screen_three_binding.dart';
import 'package:e_commerce/view/screen_three/login_page.dart';
import 'package:e_commerce/view/screen_two/binding/screen_two_binding.dart';
import 'package:e_commerce/view/screen_two/screen_two.dart';
import 'package:e_commerce/view/splash_screen/binding/splash_binding.dart';
import 'package:e_commerce/view/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {
  static const String initialscreen = "/splash_screen";
  static const String screenone = "/screen_one";
  static const String screentwo = "/screen_two";
  static const String screenThree = "/login_page";
  static const String screenFour = "/creat_account_page";
  static const String screenfive = "/forget_page";
  static const String screensix = "/code_verify_page";
  static const String screenseven = "/newpass_page";

  // pages list
  static List<GetPage> pages = [
    GetPage(
        name: initialscreen,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: screenone,
        page: () => const ScreenOne(),
        binding: ScreenOneBinding()),
    GetPage(
        name: screentwo,
        page: () => const ScreenTwo(),
        binding: ScreenTwoBinding()),
    GetPage(
        name: screenThree,
        page: () => const LoginPage(),
        binding: ScreenThreeBinding()),
    GetPage(
        name: screenFour,
        page: () => const CreateAccount(),
        binding: ScreenFourBinding()),
    GetPage(
        name: screenfive,
        page: () => ForgetPage(),
        binding: ScreenFiveBinding()),
    GetPage(
        name: screensix,
        page: () => const CodeVerification(),
        binding: ScreenSixBinding()),
    GetPage(
        name: screenseven,
        page: () => SetNewPassword(),
        binding: ScreenSevenBinding()),
  ];
}
