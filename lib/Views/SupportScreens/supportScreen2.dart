import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Views/SocialLoginScreen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Constants/ColorConstants.dart';

class SupportScreen2 extends StatelessWidget {
  const SupportScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              64.h.heightBox,
              Container(
                height: 124.h,
                width: 124.w,
                decoration: BoxDecoration(
                    color: ColorConstants.CircleColor, shape: BoxShape.circle),
              ),
              15.h.heightBox,
              Center(
                child: "Support"
                    .text
                    .size(32.sp)
                    .fontWeight(FontWeight.w600)
                    .color(Colors.black)
                    .make(),
              ),
              181.h.heightBox,
              Center(
                child: "Thank you!"
                    .text
                    .size(32.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
              ),
              31.h.heightBox,
              Center(
                child: "We will reply within 48 hours."
                    .text
                    .size(18.sp)
                    .fontWeight(FontWeight.w600)
                    .color(Colors.black)
                    .make(),
              ),
              260.h.heightBox,
              Center(
                child: Container(
                  height: 39.h,
                  width: 244.w,
                  child: CustomizedButton(
                      buttonName: "To Main Menu",
                      colorButton: ColorConstants.ButtonColor,
                      funcname: () {
                        Get.to(() => SocialLoginScreen());
                      }),
                ),
              ),
              33.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
