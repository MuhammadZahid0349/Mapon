import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:mapon/Constants/button.dart';
import 'package:velocity_x/velocity_x.dart';

class LocationInfoScreen extends StatelessWidget {
  const LocationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                10.w.widthBox,
                "Hi Peter!"
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w600)
                    .color(Colors.black)
                    .make(),
                40.w.widthBox,
              ],
            ),
            6.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 15,
                  color: Colors.grey[400],
                ),
                "Budapest, Hungary   23c"
                    .text
                    .size(12.sp)
                    .fontWeight(FontWeight.w400)
                    .color(Colors.grey[400])
                    .make(),
                40.w.widthBox,
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // 10.h.heightBox,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 20.h,
            //       width: 20.h,
            //       decoration: BoxDecoration(
            //         border: Border.all(color: Colors.black),
            //         shape: BoxShape.circle,
            //       ),
            //       child: Icon(
            //         Icons.person,
            //         color: Colors.black,
            //         size: 20,
            //       ),
            //     ),
            //     10.w.widthBox,
            //     "Hi Peter!"
            //         .text
            //         .size(16.sp)
            //         .fontWeight(FontWeight.w600)
            //         .color(Colors.black)
            //         .make(),
            //   ],
            // ),
            // 6.h.heightBox,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(
            //       Icons.location_on,
            //       size: 15,
            //       color: Colors.grey[400],
            //     ),
            //     "Budapest, Hungary   23c"
            //         .text
            //         .size(12.sp)
            //         .fontWeight(FontWeight.w400)
            //         .color(Colors.grey[400])
            //         .make(),
            //   ],
            // ),
            21.h.heightBox,
            Container(
              height: 40.h,
              width: 333.w,
              child: TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: ColorConstants.CircleColor,
                contentPadding: EdgeInsets.all(10),
                hintText: "Search  here",
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
            12.h.heightBox,
            Image.asset(
              "assets/map.png",
              fit: BoxFit.fill,
            ),
            10.h.heightBox,
            "Lorem ipsum dolor"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w700)
                .color(Colors.black)
                .make(),
            12.h.heightBox,
            "Restaurans"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w400)
                .color(Colors.black)
                .make(),
            12.h.heightBox,
            "Distance 2.5 k/m"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w400)
                .color(Colors.black)
                .make(),
            12.h.heightBox,

            Row(
              children: [
                "3.9".text.size(16.sp).make(),
                10.w.widthBox,
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.grey,
                ),
              ],
            ),
            12.h.heightBox,
            "+92 3456789102"
                .text
                .size(16.sp)
                .fontWeight(FontWeight.w500)
                .color(Colors.black)
                .make(),
            12.h.heightBox,

            Row(
              children: [
                "Closed".text.color(Colors.red).size(12.sp).make(),
                ". Closes 01:00".text.size(12.sp).make(),
              ],
            ),
            34.h.heightBox,
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  locationContainer(),
                  locationContainer(),
                  locationContainer(),
                  locationContainer(),
                ],
              ),
            )),
            51.h.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.defaultDialog(title: "", content: dialogbox());
                      },
                      child: categoriesContainer()),
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                ],
              ),
            ),
            20.h.heightBox,
          ]),
        ),
      ),
    );
  }

  Padding locationContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 7),
      child: Container(
        height: 135.h,
        width: 166.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Image.asset(
          "assets/l.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Padding categoriesContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Column(
        children: [
          Container(
            height: 65.h,
            width: 65.w,
            child: Icon(
              Icons.restaurant,
              size: 25,
            ),
            decoration: BoxDecoration(
                color: ColorConstants.CategoriesColor, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }

  Padding dialogbox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Container(
        height: 300.h,
        width: 342.2,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 10.h.heightBox,
              "Hi Peter!".text.size(22.sp).fontWeight(FontWeight.w700).make(),
              5.h.heightBox,
              "Set your starting point"
                  .text
                  .color(Colors.grey[400])
                  .size(20.sp)
                  .fontWeight(FontWeight.w600)
                  .make(),
              40.h.heightBox,
              Image.asset("assets/gps.png"),
              40.h.heightBox,
              "In order to plan the perfect trip, please set your starting point."
                  .text
                  .size(14.sp)
                  .make(),
              20.h.heightBox,
              "Usually the starting point is a hotel or an apartment in the destination country"
                  .text
                  .size(14.sp)
                  .make(),
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
              Container(
                height: 39.h,
                width: 222.w,
                child: CustomizedButton(
                    buttonName: "Confirm",
                    funcname: () {
                      ///////////////////
                    },
                    colorButton: ColorConstants.ButtonColor),
              ),
              10.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
