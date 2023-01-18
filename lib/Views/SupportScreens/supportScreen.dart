import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Views/SupportScreens/supportScreen2.dart';
import 'package:velocity_x/velocity_x.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _NameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _NameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _textController.dispose();
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
                          size: 30,
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
                  child: "Support"
                      .text
                      .size(32.sp)
                      .fontWeight(FontWeight.w600)
                      .color(Colors.black)
                      .make(),
                ),
                50.h.heightBox,
                "Name"
                    .text
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                simpletextfield("shahid", _NameController),
                15.h.heightBox,
                "Email"
                    .text
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                simpletextfield("shahid@gmail.com", _emailController),
                15.h.heightBox,
                "Subject"
                    .text
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                simpletextfield("Subject", _subjectController),
                15.h.heightBox,
                "Text"
                    .text
                    .size(14.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                Container(
                  width: 297.w,
                  height: 163.h,
                  decoration: BoxDecoration(
                    color: ColorConstants.CircleColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                      controller: _textController,
                      maxLines: 15,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorConstants.CircleColor,
                        contentPadding: EdgeInsets.all(10),
                        hintText:
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.CircleColor, width: 3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        ////////////////////////////////
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.CircleColor, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                ),
                38.h.heightBox,
                Center(
                  child: Container(
                    height: 39.h,
                    width: 244.w,
                    child: CustomizedButton(
                        buttonName: "Submit",
                        colorButton: ColorConstants.ButtonColor,
                        funcname: () {
                          Get.to(() => SupportScreen2());
                        }),
                  ),
                ),
                33.h.heightBox,
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
