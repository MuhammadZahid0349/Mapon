import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Constants/customized_textformfield.dart';
import 'package:velocity_x/velocity_x.dart';

class EnterNewPassword extends StatelessWidget {
  EnterNewPassword({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cpasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _cpasswordController.dispose();
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
                  child: "Enter New Password"
                      .text
                      .size(28.sp)
                      .fontWeight(FontWeight.w600)
                      .color(Colors.black)
                      .make(),
                ),
                111.h.heightBox,
                Center(
                  child: "Change your Password By Entering New."
                      .text
                      .size(14.sp)
                      .fontWeight(FontWeight.w400)
                      .color(Colors.black)
                      .make(),
                ),
                60.h.heightBox,
                "New Password"
                    .text
                    .size(13.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                7.h.heightBox,
                CustomizedTextFormfield(
                  myController: _passwordController,
                  isPassword: true,
                  hintText: "********",
                ),
                19.h.heightBox,
                "Re-Type Password"
                    .text
                    .size(13.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                7.h.heightBox,
                CustomizedTextFormfield(
                  myController: _cpasswordController,
                  isPassword: true,
                  hintText: "********",
                ),
                180.h.heightBox,
                Center(
                  child: Container(
                    height: 39.h,
                    width: 244.w,
                    child: CustomizedButton(
                        buttonName: "Done",
                        colorButton: ColorConstants.ButtonColor,
                        funcname: () {
                          // Get.to(() => SupportScreen2());
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
}
