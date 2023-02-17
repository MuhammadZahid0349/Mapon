import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Controller/Maincontrollers.dart';
import 'package:mapon/Views/EnterNewPassword.dart';
import 'package:mapon/Views/ForgotPasswordScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotPasswordOTP extends StatelessWidget {
  ForgotPasswordOTP({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    controller.onReady();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                64.h.heightBox,
                Row(
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
                    40.w.widthBox,
                    Container(
                      height: 124.h,
                      width: 124.w,
                      decoration: BoxDecoration(
                          color: ColorConstants.CircleColor,
                          shape: BoxShape.circle),
                    ),
                  ],
                ),
                15.h.heightBox,
                "Forgot Password"
                    .text
                    .size(28.sp)
                    .fontWeight(FontWeight.w600)
                    .color(Colors.black)
                    .make(),
                53.h.heightBox,
                "OTP Verify"
                    .text
                    .size(24.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
                13.h.heightBox,
                "You will get an OTP in "
                    .text
                    .size(17.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
                13.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "admin@gmail.com"
                        .text
                        .size(17.sp)
                        .fontWeight(FontWeight.w400)
                        .color(Colors.black)
                        .make(),
                    8.w.widthBox,
                    "Change"
                        .text
                        .size(13.sp)
                        .fontWeight(FontWeight.w500)
                        .color(Colors.red)
                        .make(),
                  ],
                ),
                // Row(
                //   children: [
                //     GridView.count(
                //       crossAxisCount: 4,
                //       shrinkWrap: true,
                //       children: List.generate(4, (index) {
                //         return Container(
                //           height: 49.h,
                //           width: 47.w,
                //           decoration: BoxDecoration(
                //               color: ColorConstants.CircleColor,
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(10))),
                //         );
                //       }),
                //     )
                //   ],
                // ),
                60.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(first: true, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: true),
                  ],
                ),
                39.h.heightBox,
                Obx(
                  () => "${controller.time.value}"
                      .text
                      .size(17.sp)
                      .fontWeight(FontWeight.w500)
                      .color(Color(0xff7AB4D4))
                      .make(),
                ),

                40.h.heightBox,
                "Enter Valid OTP Number!"
                    .text
                    .size(17.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
                "You will receive a 4 digit code"
                    .text
                    .size(17.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.black)
                    .make(),
                43.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Didn’t receive code?"
                        .text
                        .size(18.sp)
                        .fontWeight(FontWeight.w400)
                        .color(Colors.red)
                        .make(),
                    2.w.widthBox,
                    "Resend"
                        .text
                        .size(18.sp)
                        .fontWeight(FontWeight.w500)
                        .color(Colors.red)
                        .make(),
                  ],
                ),
                54.h.heightBox,
                Center(
                  child: Container(
                    height: 39.h,
                    width: 244.w,
                    child: CustomizedButton(
                        buttonName: "Confirm",
                        colorButton: ColorConstants.ButtonColor,
                        funcname: () {
                          Get.to(() => EnterNewPassword());
                        }),
                  ),
                ),
                55.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }

  _textFieldOTP({required bool first, last}) {
    return Container(
      height: 49.h,
      width: 47.w,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: false,
          onChanged: (value) {
            // if (value.length == 1 && last == false) {
            //   FocusScope.of(_).nextFocus();
            // }
            // if (value.length == 0 && first == false) {
            //   FocusScope.of(_).previousFocus();
            // }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            fillColor: ColorConstants.CircleColor,
            filled: true,
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: ColorConstants.CircleColor),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: ColorConstants.CircleColor),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }

  Container simpletextfield(var hinttext, var Controller) {
    return Container(
      width: 297.w,
      height: 39.h,
      child: TextFormField(
          controller: Controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorConstants.CircleColor,
            contentPadding: EdgeInsets.all(10),
            hintText: hinttext,
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorConstants.CircleColor, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            ////////////////////////////////
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorConstants.CircleColor, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
    );
  }
}
