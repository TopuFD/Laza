import 'package:e_commerce/view/splash_screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF9775FA),
      body: SafeArea(
        child: Container(
          color: const Color(0xFF9775FA),
          height: mq.height,
          width: double.maxFinite,
          child: Image.asset(
            "images/splash.png",
            alignment: Alignment.center,
            height: mq.height,
            width: mq.width,
          ),
        ),
      ),
    );
  }
}
