import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapon/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            "Categories"
                .text
                .size(22.sp)
                .fontWeight(FontWeight.w700)
                .color(Colors.black)
                .make(),
            17.h.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                  categoriesContainer(),
                ],
              ),
            ),
            12.h.heightBox,

            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  14.h.heightBox,
                  Center(
                    child: Container(
                      height: 3.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  // 19.h.heightBox,
                  SearchContainers(),
                  SearchContainers(),
                  SearchContainers(),
                  SearchContainers(),
                  SearchContainers(),
                  SearchContainers(),
                ]),
          ]),
        ),
      ),
    );
  }

  Padding SearchContainers() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image.asset("assets/l.png"),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Statue of Liberty"
                  .text
                  .size(22.sp)
                  .fontWeight(FontWeight.w400)
                  .color(Colors.black)
                  .make(),
              7.h.heightBox,
              "Lorem ipsum dolor consectetur"
                  .text
                  .size(14.sp)
                  .fontWeight(FontWeight.w400)
                  .color(Colors.black)
                  .make(),
              7.h.heightBox,
              "sit amet, consectetur."
                  .text
                  .size(14.sp)
                  .fontWeight(FontWeight.w400)
                  .color(Colors.black)
                  .make(),
            ],
          ),
        ],
      ),
    );
  }

  Padding locationContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 13),
      child: Container(
        height: 87.h,
        width: 92.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Image.asset("assets/c.png"),
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
          "Restaurans"
              .text
              .size(11.sp)
              .fontWeight(FontWeight.w600)
              .color(Colors.black)
              .make(),
        ],
      ),
    );
  }
}
