import 'package:e_commerce/view/add_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reviews',
          style: TextStyle(
            color: const Color(0xFF1D1E20),
            fontSize: 17.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '245 Reviews',
                        style: TextStyle(
                          color: const Color(0xFF1D1E20),
                          fontSize: 15.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.07,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '4.8  ',
                            style: TextStyle(
                              color: const Color(0xFF1D1E20),
                              fontSize: 13.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
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
                            Icons.star,
                            color: const Color(0xFFFF971E),
                            size: 13.sp,
                          ),
                          Icon(
                            Icons.star_border,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            size: 13.sp,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          overlayColor: MaterialStatePropertyAll(
                            Color(0xFFC4C4C4),
                          ),
                          shadowColor: MaterialStatePropertyAll(
                            Color(0xFF000000),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFFF7043),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AddReviewPage()));
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit_rounded,
                            color: Color(0xFFFEFEFE),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'Add Review',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFE),
                              fontSize: 13.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
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
                                              255, 0, 0, 0),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                                style: TextStyle(
                                  color: const Color(0xFF8F959E),
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
