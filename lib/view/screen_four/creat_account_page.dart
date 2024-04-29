import 'package:e_commerce/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();
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
                  'Sign Up',
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
                  height: mq.height * .2,
                ),
                Column(
                  children: [
                    MyForm(
                        controller: nameController,
                        labelText: "UserName",
                        hintText: "Write user Name"),
                    SizedBox(
                      height: 15.h,
                    ),
                    MyForm(
                        controller: emailController,
                        labelText: "Email",
                        hintText: "Write user Email"),
                    SizedBox(
                      height: 15.h,
                    ),
                    MyForm(
                        controller: passController,
                        labelText: "Password",
                        hintText: "Write Strong password"),
                  ],
                ),
                SizedBox(
                  height: mq.height * .03,
                ),
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
                SizedBox(
                  height: mq.height * .1,
                ),
                Container(
                  width: mq.width,
                  height: mq.height * .1,
                  decoration: const BoxDecoration(
                      color: Color(0xFF9775FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Sign Up',
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
