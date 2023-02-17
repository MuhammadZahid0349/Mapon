import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mapon/SplashScreen.dart';
import 'package:mapon/Views/CategoryScreen.dart';
import 'package:mapon/Views/EnterNewPassword.dart';
import 'package:mapon/Views/ForgotPasswordOtp.dart';
import 'package:mapon/Views/ForgotPasswordScreen.dart';
import 'package:mapon/Views/Frame6.dart';
import 'package:mapon/Views/LocationInfoScreen.dart';
import 'package:mapon/Views/LoginScreen.dart';
import 'package:mapon/Views/MainScreen.dart';
import 'package:mapon/Views/MenuIconsScreen.dart';
import 'package:mapon/Views/PlannerScreen.dart';
import 'package:mapon/Views/SearchScreen.dart';
import 'package:mapon/Views/ViewYourTripScreen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // final Future<FirebaseApp> _initilization =
  //     Firebase.initializeApp(); //firebase

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: EasyLoading.init(),
            home: SplashScrren(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
