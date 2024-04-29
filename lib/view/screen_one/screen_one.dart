import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/widgets/button_pageone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.21, -0.98),
            end: Alignment(-0.21, 0.98),
            colors: [Color(0xFFB0A3E5), Color(0xFF7661C5)],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "images/onbimage.png",
                height: mq.height,
                width: mq.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: mq.height * .02, horizontal: mq.width * .04),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFffffff),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(150.r),
                      topLeft: Radius.circular(15.r),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Look Good Feel",
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1D1E20),
                        ),
                      ),
                      Text(
                        "Create your individual & unique style and look amazing everyday.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF8F959E),
                        ),
                      ),
                      SizedBox(
                        height: mq.height * .05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                ontapWomen();
                              },
                              child: CustomButton(
                                text: "Men",
                              )),
                          InkWell(
                              onTap: () {
                                ontapWomen();
                              },
                              child: InkWell(
                                  child: CustomButton(
                                text: "Women",
                              ))),
                        ],
                      ),
                      SizedBox(
                        height: mq.height * .01,
                      ),
                      Center(
                          child: TextButton(
                              onPressed: () {
                                ontapWomen();
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  color: const Color(0xFF8F959E),
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                ),
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ontapWomen() {
    Get.toNamed(AppRoute.screentwo);
  }
}
