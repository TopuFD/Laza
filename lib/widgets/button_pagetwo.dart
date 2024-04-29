import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomButtonPageTwo extends StatelessWidget {
  String text;
  FaIcon icon;
  Color buttonColor;
  CustomButtonPageTwo({
    super.key,
    required this.text,
    required this.icon,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: mq.width * .02),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(mq.height * .015),
        decoration: ShapeDecoration(
          color: const Color(0xFF9775FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: mq.width * .01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon,
                SizedBox(
                  width: mq.width * .01,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.08.h,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
