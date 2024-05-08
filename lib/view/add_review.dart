import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({super.key});

  @override
  State<AddReviewPage> createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  var ratingValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Review',
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
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                color: const Color(0xFF1D1E20),
                fontSize: 17.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: const Color(0xFF8F959E),
                      fontSize: 15.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                    hintText: 'Type your name',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'How was your experience ?',
              style: TextStyle(
                color: const Color(0xFF1D1E20),
                fontSize: 17.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: const Color(0xFF8F959E),
                      fontSize: 15.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                    hintText: 'Type your name',
                  ),
                  maxLines: 7,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Star',
              style: TextStyle(
                color: const Color(0xFF1D1E20),
                fontSize: 17.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 0,
                    child: Text(
                      ratingValue.toStringAsFixed(1),
                      style: TextStyle(
                        color: Color(0xFF1D1E20),
                        fontSize: 11.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Slider(
                        min: 0.0,
                        max: 5.0,
                        value: ratingValue,
                        divisions: 10,
                        onChanged: (value) {
                          setState(() {
                            ratingValue = value.roundToDouble();
                          });
                        }),
                  ),
                  Expanded(
                    flex: 0,
                    child: Text(
                      "5.0",
                      style: TextStyle(
                        color: Color(0xFF1D1E20),
                        fontSize: 11.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
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
                      'Submit Review',
                      style: TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 17.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
