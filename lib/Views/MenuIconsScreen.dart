import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:mapon/Controller/Maincontrollers.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  var controller = Get.put(MainController());

  // int _selectIndex = 0;
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        ///////////////////////////////////////////////////
        body: controller.page[controller.index],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 15, left: 15),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: ColorConstants.ButtonColor,
            tabBorderRadius: 15,
            onTabChange: (currentindex) {
              controller.index;
            },
            gap: 4,
            padding: EdgeInsets.all(20),
            tabs: [
              GButton(
                onPressed: () {
                  print("1");
                  Get.defaultDialog(title: "", content: dialogbox());
                  //Alert Dialog box need
                },
                icon: Icons.location_on,
                text: "Create",
                textSize: 12.sp,
              ),
              GButton(
                icon: Icons.location_off,
                text: "Create",
              ),
              GButton(
                icon: Icons.location_city_sharp,
                text: "Create",
              ),
              GButton(
                icon: Icons.location_history_sharp,
                text: "Create",
              )
            ],
          ),
        ),

        //           controller.pages(3);
      );
    });
  }

  Padding dialogbox() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: 300.h,
        width: 342.2,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              20.h.heightBox,
              "Hi Peter!".text.size(22.sp).fontWeight(FontWeight.w700).make(),
              5.h.heightBox,
              "Set your starting point"
                  .text
                  .color(Colors.grey[400])
                  .size(20.sp)
                  .fontWeight(FontWeight.w600)
                  .make(),
              40.h.heightBox,
              Center(
                child:
                    "In order to plan the perfect trip, please set your starting point."
                        .text
                        .size(14.sp)
                        .make(),
              ),
              40.h.heightBox,
              Container(
                height: 36.h,
                width: 285.w,
                child: TextFormField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.CircleColor,
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Berlin, Germany",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorConstants.CircleColor, width: 3),
                    borderRadius: BorderRadius.circular(10),
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
              ),
              45.h.heightBox,
              CustomizedButton(
                  buttonName: "Confirm",
                  funcname: () {},
                  colorButton: ColorConstants.ButtonColor),
              10.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

}
