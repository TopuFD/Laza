import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String text;
  CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 151,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFF9775FA),
        shadows: [
          BoxShadow(
            color: Color(0xFFB0A3E5),
            blurRadius: 8.1.w,
            blurStyle: BlurStyle.solid,
            offset:const Offset(1, 3)
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            height: 0.06,
          ),
        ),
      ),
    );
  }
}
