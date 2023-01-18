import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class PlannerScreen extends StatelessWidget {
  const PlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.h.heightBox,
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
            8.h.heightBox,
            "Plan you trip:"
                .text
                .fontWeight(FontWeight.w600)
                .size(22.sp)
                .make(),
            20.h.heightBox,
            "Berlin, Germany"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w600)
                .color(Colors.black)
                .make(),
            5.h.heightBox,
            "04 - 10 December 2022"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w600)
                .color(Colors.black)
                .make(),
            5.h.heightBox,
            "(7 days)"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w600)
                .color(Colors.black)
                .make(),
            150.h.heightBox,
            ///////////////////////////
            ///////////////
            ///
            Row(
              children: [
                Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.add,
                    size: 15,
                  ),
                ),
                17.w.widthBox,
                "Add an attraction"
                    .text
                    .size(18.sp)
                    .fontWeight(FontWeight.w600)
                    .color(Colors.black)
                    .make(),
              ],
            ),
            26.h.heightBox,
            Row(
              children: [
                "Filter by: "
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
                17.w.widthBox,
                Image.asset("assets/w.png"),
                22.w.widthBox,
                Image.asset("assets/car.png"),
                22.w.widthBox,
                Image.asset("assets/bus.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
