import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Views/SupportScreens/supportScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            64.h.heightBox,
            Container(
              height: 124.h,
              width: 124.w,
              decoration: BoxDecoration(
                  color: ColorConstants.CircleColor, shape: BoxShape.circle),
            ),
            100.h.heightBox,
            "Log In"
                .text
                .size(32.sp)
                .fontWeight(FontWeight.w600)
                .color(Colors.black)
                .make(),
            95.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 61.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        color: ColorConstants.CircleColor,
                        shape: BoxShape.circle),
                    child: Image.asset("assets/g.png")),
                50.w.widthBox,
                Container(
                    height: 61.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        color: ColorConstants.CircleColor,
                        shape: BoxShape.circle),
                    child: Image.asset("assets/f.png")),
              ],
            ),
            100.h.heightBox,
            GestureDetector(
              onTap: () {
                Get.to(() => SupportScreen());
              },
              child: "Need Help?"
                  .text
                  .size(18.sp)
                  .fontWeight(FontWeight.w700)
                  .color(Color(0xff7AB4D4))
                  .make(),
            ),
          ]),
        ),
      ),
    );
  }
}
