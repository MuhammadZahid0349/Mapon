import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Views/ForgotPasswordOtp.dart';
import 'package:mapon/Views/SupportScreens/supportScreen2.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Center(
                  child: "Forgot Password"
                      .text
                      .size(28.sp)
                      .fontWeight(FontWeight.w600)
                      .color(Colors.black)
                      .make(),
                ),
                111.h.heightBox,
                Center(
                  child: "Enter the Email that attached to your"
                      .text
                      .size(14.sp)
                      .fontWeight(FontWeight.w400)
                      .color(Colors.black)
                      .make(),
                ),
                Center(
                  child: "account"
                      .text
                      .size(14.sp)
                      .fontWeight(FontWeight.w400)
                      .color(Colors.black)
                      .make(),
                ),
                68.h.heightBox,
                "Email"
                    .text
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                simpletextfield("shahid@gmail.com", _emailController),
                58.h.heightBox,
                Center(
                  child: "Your email is not registered with us"
                      .text
                      .size(12.sp)
                      .fontWeight(FontWeight.w400)
                      .color(Colors.red)
                      .make(),
                ),
                Center(
                  child: "Please Check"
                      .text
                      .size(12.sp)
                      .fontWeight(FontWeight.w400)
                      .color(Colors.red)
                      .make(),
                ),
                164.h.heightBox,
                Center(
                  child: Container(
                    height: 39.h,
                    width: 244.w,
                    child: CustomizedButton(
                        buttonName: "Send",
                        colorButton: ColorConstants.ButtonColor,
                        funcname: () {
                          Get.to(() => ForgotPasswordOTP());
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
