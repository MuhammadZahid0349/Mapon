import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class Frame6 extends StatelessWidget {
  const Frame6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 192.h,
                width: 375.w,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(50),
                    //     topRight: Radius.circular(50)),
                    color: ColorConstants.ButtonColor),
              ),

              Positioned(
                top: 30.h,
                left: 20.w,
                child: GestureDetector(
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
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: Container(
                  margin: EdgeInsets.only(top: 109.h),
                  height: 170.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorConstants.CircleColor),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Peter Peter"
                          .text
                          .fontWeight(FontWeight.w700)
                          .size(22.sp)
                          .make(),
                      6.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Colors.grey[400],
                          ),
                          15.w.widthBox,
                          "Budapest, Hungary"
                              .text
                              .size(12.sp)
                              .fontWeight(FontWeight.w400)
                              .color(Colors.grey[400])
                              .make(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //////////////////////////////
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 60.h),
                  height: 105.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset("assets/l.png"),
                ),
              ),
            ]),
            53.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              child: Column(
                children: [
                  infoContainer("Home", "assets/ho.png"),
                  28.h.heightBox,
                  infoContainer("My trips", "assets/t.png"),
                  28.h.heightBox,
                  infoContainer("Help & Support", "assets/hs.png"),
                  28.h.heightBox,
                  infoContainer("Terms & Conditions", "assets/he.png"),
                  28.h.heightBox,
                  infoContainer("Logout", "assets/p.png"),
                  242.h.heightBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container infoContainer(String text, iconName) {
    return Container(
      height: 40.h,
      width: 350.w,
      decoration: BoxDecoration(
          color: ColorConstants.CircleColor,
          border: Border.all(color: ColorConstants.CircleColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.w),
        child: Row(
          children: [
            10.w.widthBox,
            Image.asset("$iconName"),
            20.w.widthBox,
            text.text.fontWeight(FontWeight.w700).size(16.sp).make(),
          ],
        ),
      ),
    );
  }
}
