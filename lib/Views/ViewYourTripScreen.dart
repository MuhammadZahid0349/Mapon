import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewYourTrip extends StatelessWidget {
  const ViewYourTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 37.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 6.w),
                  height: 36.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                    color: ColorConstants.CircleColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: ColorConstants.BackBColor,
                  ),
                ),
              ),

              /////////////////////////
              26.h.heightBox,
              "View your trips"
                  .text
                  .size(22.sp)
                  .fontWeight(FontWeight.w600)
                  .color(Colors.black)
                  .make(),
              35.h.heightBox,
              tripContainer(),
              tripContainer(),
              tripContainer(),
              tripContainer(),
              tripContainer(),
              tripContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Padding tripContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.w),
      child: Container(
        height: 170.h,
        width: 350.w,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: ColorConstants.CircleColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 79.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      "assets/l.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  20.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Berlin, Germany"
                          .text
                          .size(18.sp)
                          .fontWeight(FontWeight.w700)
                          .color(Colors.black)
                          .make(),
                      5.h.heightBox,
                      "04 - 10 December 2022"
                          .text
                          .size(16.sp)
                          .fontWeight(FontWeight.w400)
                          .color(Colors.black)
                          .make(),
                      5.h.heightBox,
                      "(7 days)"
                          .text
                          .size(16.sp)
                          .fontWeight(FontWeight.w400)
                          .color(Colors.black)
                          .make(),
                    ],
                  ),
                ],
              ),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/l1.png"),
                  Image.asset("assets/l2.png"),
                  Image.asset("assets/l3.png"),
                  Image.asset("assets/l4.png"),
                  Image.asset("assets/l5.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
