import 'package:e_commerce/view/review_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                  child: Icon(
                Icons.shop,
                color: Color.fromARGB(255, 112, 112, 112),
              )))
        ],
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,
            ),
            Positioned(
              top: -40,
              left: MediaQuery.of(context).size.width / 4,
              child: SizedBox(
                  height: 400,
                  child: Image.asset(
                    "images/product/product.png",
                    height: 350,
                    width: 200,
                  )),
            ),
            Positioned(
              left: 160,
              top: 220,
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: const Color(0x60FFFFFF),
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset("images/tabbarLogo/nike.png")),
            ),
            Positioned(
                top: 270,
                left: 0,
                child: Container(
                  color: const Color.fromARGB(255, 238, 236, 236),
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nike Club Fleece',
                                style: TextStyle(
                                  color: const Color(0xFF1D1E20),
                                  fontSize: 22.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                ),
                              ),
                              Text(
                                '\$120',
                                style: TextStyle(
                                  color: const Color(0xFF1D1E20),
                                  fontSize: 22.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Size',
                                style: TextStyle(
                                  color: const Color(0xFF1D1E20),
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.06,
                                ),
                              ),
                              Text(
                                'Size Guide',
                                style: TextStyle(
                                  color: const Color(0xFF8F959E),
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.07,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              sizeButton("S"),
                              sizeButton("M"),
                              sizeButton("L"),
                              sizeButton("XL"),
                              sizeButton("2XL"),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: const Color(0xFF1D1E20),
                              fontSize: 17.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with',
                                  style: TextStyle(
                                    color: const Color(0xFF8F959E),
                                    fontSize: 15.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: const Color(0xFF1D1E20),
                                    fontSize: 15.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Read More..',
                                  style: TextStyle(
                                    color: const Color(0xFF1D1E20),
                                    fontSize: 15.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  color: const Color(0xFF1D1E20),
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.06,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const ReviewPage()));
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      color: const Color(0xFF8F959E),
                                      fontSize: 13.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                    ),
                                  ))
                            ],
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                                child: Icon(Icons.person_2_outlined)),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "4.8  rating",
                                  style: TextStyle(
                                    color: const Color(0xFF1D1E20),
                                    fontSize: 15.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.01,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: const Color(0xFFFF971E),
                                        size: 13.sp,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color(0xFFFF971E),
                                        size: 13.sp,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color(0xFFFF971E),
                                        size: 13.sp,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color(0xFFFF971E),
                                        size: 13.sp,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        size: 13.sp,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            title: Text(
                              'Ronald Richards',
                              style: TextStyle(
                                color: const Color(0xFF1D1E20),
                                fontSize: 15.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(
                                  Icons.watch_later_outlined,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' 13 Sep, 2020',
                                  style: TextStyle(
                                    color: const Color(0xFF8F959E),
                                    fontSize: 11.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                            style: TextStyle(
                              color: const Color(0xFF8F959E),
                              fontSize: 15.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Total Price',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1E20),
                                      fontSize: 15.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    'with VAT,SD',
                                    style: TextStyle(
                                      color: const Color(0xFF8F959E),
                                      fontSize: 11.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '\$125',
                                style: TextStyle(
                                  color: const Color(0xFF1D1E20),
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  overlayColor: MaterialStatePropertyAll(
                                    Color(0xFFD1C5F4),
                                  ),
                                  shadowColor: MaterialStatePropertyAll(
                                    Color(0xFF57448E),
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFF9775FA),
                                  )),
                              onPressed: () {},
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 30.h),
                                  child: Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                      color: Color(0xFFFEFEFE),
                                      fontSize: 17.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  sizeButton(size) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: const Color(0xFF1D1E20),
            fontSize: 17.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
      ),
    );
  }
}
