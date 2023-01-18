import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Constants/customized_textformfield.dart';
import 'package:mapon/Views/ForgotPasswordScreen.dart';
import 'package:mapon/Views/SignUpScreen.dart';
import 'package:mapon/Views/SupportScreens/supportScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool value = false;

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
                Center(
                  child: Container(
                    height: 124.h,
                    width: 124.w,
                    decoration: BoxDecoration(
                        color: ColorConstants.CircleColor,
                        shape: BoxShape.circle),
                  ),
                ),
                15.h.heightBox,
                Center(
                  child: "Log In"
                      .text
                      .size(28.sp)
                      .fontWeight(FontWeight.w600)
                      .color(Colors.black)
                      .make(),
                ),
                95.h.heightBox,
                "Email ID"
                    .text
                    .size(13.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                simpletextfield("shahid@gmail.com", _emailController),
                19.h.heightBox,
                "Password"
                    .text
                    .size(13.sp)
                    .fontWeight(FontWeight.w500)
                    .color(Colors.black)
                    .make(),
                8.h.heightBox,
                // simpletextfield("*******", _passwordController),'
                CustomizedTextFormfield(
                  myController: _passwordController,
                  isPassword: true,
                  hintText: "*********",
                ),
                25.h.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(() => ForgotScreen());
                  },
                  child: Center(
                    child: "Forgot Password?"
                        .text
                        .size(10.sp)
                        .fontWeight(FontWeight.w500)
                        .color(Color(0xff7AB4D4))
                        .make(),
                  ),
                ),
                20.h.heightBox,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          value = !value;
                        },
                        child: Container(
                            height: 18.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                                color: ColorConstants.ButtonColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: value
                                ? Icon(
                                    Icons.check,
                                    size: 15.0,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.check,
                                    size: 15.0,
                                    color: Colors.white,
                                  )),
                      ),
                    ),
                    "Save password for future login"
                        .text
                        .size(14.sp)
                        .fontWeight(FontWeight.w500)
                        .color(Colors.black)
                        .make(),
                  ],
                ),
                26.h.heightBox,
                Center(
                  child: Container(
                    height: 39.h,
                    width: 244.w,
                    child: CustomizedButton(
                        buttonName: "Log In",
                        colorButton: ColorConstants.ButtonColor,
                        funcname: () {
                          // Get.to(() => SocialLoginScreen());
                        }),
                  ),
                ),
                20.h.heightBox,
                Center(
                    child: "-------------- or --------------"
                        .text
                        .fontWeight(FontWeight.w700)
                        .size(16.sp)
                        .make()),
                10.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/g.png"),
                    35.w.widthBox,
                    Image.asset("assets/f.png")
                  ],
                ),
                15.h.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(() => SupportScreen());
                  },
                  child: Center(
                    child: "Need Help?"
                        .text
                        .size(18.sp)
                        .fontWeight(FontWeight.w700)
                        .color(Color(0xff7AB4D4))
                        .make(),
                  ),
                ),
                15.h.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Center(
                    child: "New Here? Register"
                        .text
                        .size(18.sp)
                        .fontWeight(FontWeight.w700)
                        .color(Color(0xff7AB4D4))
                        .make(),
                  ),
                ),
                10.h.heightBox,
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
      height: 40.h,
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
