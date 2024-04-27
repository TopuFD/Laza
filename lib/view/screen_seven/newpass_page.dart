import 'package:e_commerce/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewPassword extends StatelessWidget {
  SetNewPassword({super.key});

  final TextEditingController newPassController = TextEditingController();
  final TextEditingController comPassController = TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'New Password',
                  style: TextStyle(
                    color: const Color(0xFF1D1E20),
                    fontSize: 28.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                    letterSpacing: -0.21,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Column(
                  children: [
                    MyForm(
                        controller: newPassController,
                        labelText: "Password",
                        hintText: "Write Strong password"),
                    SizedBox(
                      height: 15.h,
                    ),
                    MyForm(
                        controller: comPassController,
                        labelText: "Comfirm Password",
                        hintText: "Write comfirm password"),
                  ],
                ),
                
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Text(
                  'Please write your new password.',
                  style: TextStyle(
                    color: const Color(0xFF8F959E),
                    fontSize: 13.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 2,
                  ),
                ),

                Container(
                  width: 375.w,
                  height: 75.h,
                  decoration: const BoxDecoration(
                      color: Color(0xFF9775FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Reset Password',
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
}
