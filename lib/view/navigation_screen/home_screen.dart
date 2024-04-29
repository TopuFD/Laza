
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mq.width * .05, vertical: mq.height * .01),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [customApbar(context)],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mq.height * .04,
            ),
            Text(
              'Hello',
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
              height: mq.height * .03,
            ),
            Text(
              'Welcome to Laza.',
              style: TextStyle(
                color: const Color(0xFF8F959E),
                fontSize: 15.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.07,
              ),
            ),
            SizedBox(
              height: mq.height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: mq.height * .07,
                  width: mq.width * .7,
                  child: Stack(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.r)))),
                      ),
                      Positioned(
                          top: mq.height * .007,
                          right: mq.width * .02,
                          child: CircleAvatar(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Color(0xFF000000),
                                )),
                          )),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    height: mq.height * .07,
                    width: mq.width * .14,
                    decoration: BoxDecoration(
                        color: const Color(0xFF9775FA),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.microphone,
                      color: Color(0xFFffffff),
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: mq.height * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Brand',
                  style: TextStyle(
                    color: const Color(0xFF1D1E20),
                    fontSize: 17.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.06,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: const Color(0xFF8F959E),
                    fontSize: 13.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                )
              ],
            ),
            SizedBox(
              height: mq.height * .03,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomTapButton(
                      text: "Adidas",
                      imagePath: "images/tabbarLogo/Adidas.png"),
                  CustomTapButton(
                      text: "Nike", imagePath: "images/tabbarLogo/nike.png"),
                  CustomTapButton(
                      text: "Fila", imagePath: "images/tabbarLogo/fila.png"),
                  CustomTapButton(
                      text: "Puma", imagePath: "images/tabbarLogo/puma.png"),
                ],
              ),
            ),
            SizedBox(
              height: mq.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arraival',
                  style: TextStyle(
                    color: const Color(0xFF1D1E20),
                    fontSize: 17.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.06,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: const Color(0xFF8F959E),
                    fontSize: 13.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  customApbar(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .88,
      height: MediaQuery.of(context).size.height * .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFF5F6FA),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_outlined),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xFFF5F6FA),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
          ),
        ],
      ),
    );
  }
}

class CustomTapButton extends StatelessWidget {
  final String text;
  final String imagePath;
  const CustomTapButton(
      {super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * .02),
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6FA),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  color: Color(0xFFFEFEFE),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * .01),
                child: Image.asset(
                  imagePath,
                  height: 17.h,
                  width: 25.w,
                ),
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * .03,
          ),
          Text(
            text,
            style: TextStyle(
              color: const Color(0xFF1D1E20),
              fontSize: 15.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0.07,
            ),
          )
        ],
      ),
    );
  }
}
