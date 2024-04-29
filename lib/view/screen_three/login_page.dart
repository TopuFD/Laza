import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: mq.height * .08,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: const Color(0xFF1D1E20),
                    fontSize: 28.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: mq.height * .001,
                    letterSpacing: -0.21,
                  ),
                ),
                SizedBox(
                  height: mq.height * .02,
                ),
                Text(
                  'Please enter your data to continue',
                  style: TextStyle(
                    color: const Color(0xFF8F959E),
                    fontSize: 15.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: mq.height * .0001,
                  ),
                ),
                SizedBox(
                  height: mq.height * .1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyForm(
                        controller: emailController,
                        labelText: "Email",
                        hintText: "Write user Email"),
                    SizedBox(
                      height: mq.height * .03,
                    ),
                    MyForm(
                        controller: passController,
                        labelText: "Password",
                        hintText: "Write Strong password"),
                    SizedBox(height: mq.height * .03,),
                    InkWell(
                        onTap: () => goToForgetPage(),
                        child: Text(
                          'Forgot password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: const Color(0xFFEA4335),
                            fontSize: 15.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.07,
                          ),
                        )),
                      SizedBox(height: mq.height * .02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: const Color(0xFF1D1E20),
                            fontSize: 13.sp,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                              activeColor: Colors.white,
                              activeTrackColor: Colors.blue,
                              value: isRemember,
                              onChanged: (value) {
                                setState(() {
                                  isRemember = !isRemember;
                                });
                              }),
                        )
                      ],
                    ),
                    SizedBox(height: mq.height * .1),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By connecting your account confirm that you agree with our ',
                            style: TextStyle(
                              color: const Color(0xFF8F959E),
                              fontSize: 13.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          TextSpan(
                            text: 'Term and Condition',
                            style: TextStyle(
                              color: const Color(0xFF1D1E20),
                              fontSize: 13.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: mq.height * .02,
                ),
                Container(
                  width: mq.width,
                  height: mq.height * .1,
                  decoration: const BoxDecoration(
                      color: Color(0xFF9775FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    onTap: () => goNavigationPage(),
                    child: Center(
                      child: Text(
                        'Login',
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

  goNavigationPage() {
    Get.toNamed(AppRoute.screeneight);
  }

  goToForgetPage() {
    Get.toNamed(AppRoute.screenfive);
  }
}
