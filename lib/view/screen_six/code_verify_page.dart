import 'package:e_commerce/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeVerification extends StatefulWidget {
  const CodeVerification({super.key});

  @override
  State<CodeVerification> createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                'Verification Code',
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
              SizedBox(height: 15.h,),
              SizedBox(
                child: PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    inactiveColor: const Color.fromARGB(66, 73, 73, 73),
                    inactiveFillColor: Colors.white,
                
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 80.h,
                    fieldWidth: 65.w,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration:const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  // controller: textEditingController,
                  // onCompleted: (v) {
                  // },
                  // onChanged: (value) {
                  //   setState(() {
                  //     currentText = value;
                  //   });
                  // },
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '00:20',
                      style: TextStyle(
                        color: const Color(0xFF1D1E20),
                        fontSize: 13.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                      ),
                    ),
                    TextSpan(
                      text: ' resend confirmation code.',
                      style: TextStyle(
                        color: const Color(0xFF8F959E),
                        fontSize: 13.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
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
                  onTap: () => goSetPassPage(),
                  child: Center(
                    child: Text(
                      'Confirm Code',
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
      )),
    );
  }

  goSetPassPage() {
    Get.toNamed(AppRoute.screenseven);
  }
}
