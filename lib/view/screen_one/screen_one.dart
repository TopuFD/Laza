import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/widgets/button_pageone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                height: 823,
                width: 373,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFffffff),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(150),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Look Good Feel",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1D1E20),
                        ),
                      ),
                      const Text(
                        "Create your individual & unique style and look amazing everyday.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF8F959E),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                ontapWomen();
                              },
                              child: CustomButton(
                                text: "Men",
                              )),
                          GestureDetector(
                              onTap: () {
                                ontapWomen();
                              },
                              child: InkWell(
                                  child: CustomButton(
                                text: "Women",
                              ))),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: TextButton(
                              onPressed: () {
                                ontapWomen();
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                  color: Color(0xFF8F959E),
                                  fontSize: 17,
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
