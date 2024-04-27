import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPage extends StatelessWidget {
  ForgetPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: const Color(0xFF1D1E20),
                    fontSize: 28.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                    letterSpacing: -0.21,
                  ),
                ),
                Image.asset("images/forgetimage.png"),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Email Address',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color(0xFF8F959E),
                      fontSize: 18.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                MyForm(
                    controller: emailController,
                    labelText: "Email Adress",
                    hintText: "Write Your Email"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Text(
                  'Please write your email to receive a confirmation code to set a new password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF8F959E),
                    fontSize: 13.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 375.w,
                  height: 75.h,
                  decoration: const BoxDecoration(
                      color: Color(0xFF9775FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    onTap: () => goVerifycodePage(),
                    child: Center(
                      child: Text(
                        'Confirm Mail',
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
          ),
        )));
  }

  goVerifycodePage() {
    Get.toNamed(AppRoute.screensix);
  }
}
