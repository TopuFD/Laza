import 'dart:ffi';

import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/widgets/button_pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Let’s Get Started",
                style: TextStyle(
                  color: const Color(0xFF1D1E20),
                  fontSize: 28.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.04.h,
                  letterSpacing: -0.21.h,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButtonPageTwo(
                        text: "Facebook",
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: const Color(0xFFffffff),
                          size: 17.sp,
                        ),
                        buttonColor: const Color(0xFF9775FA)),
                    CustomButtonPageTwo(
                        text: "Twitter",
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: const Color(0xFFffffff),
                          size: 17.sp,
                        ),
                        buttonColor: const Color(0xFF9775FA)),
                    CustomButtonPageTwo(
                        text: "Google",
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: const Color(0xFFffffff),
                          size: 17.sp,
                        ),
                        buttonColor: const Color(0xFF9775FA)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: const Color(0xFF8F959E),
                      fontSize: 15.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                  ),
                  TextButton(
                    onPressed: () => goLoginPage(),
                    child: Text(
                      'SignIn',
                      style: TextStyle(
                        color: const Color(0xFF8F959E),
                        fontSize: 15.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.07,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Container(
                width: 375.w,
                height: 75.h,
                decoration: const BoxDecoration(color: Color(0xFF9775FA),borderRadius: BorderRadius.all(Radius.circular(15))),
                child: InkWell(
                  onTap: () => goCreatAccount(),
                  child: Center(
                    child: Text(
                      'Create an Account',
                      style: TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontSize: 17.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }

  goCreatAccount() {
    Get.toNamed(AppRoute.screenFour);
  }

  goLoginPage() {
    Get.toNamed(AppRoute.screenThree);
  }
}
