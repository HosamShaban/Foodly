import 'package:flutter/material.dart';
import 'package:foodly/%20Localization/locale.dart';
import 'package:foodly/controller/locale_controller.dart';
import 'package:foodly/view/loading/welcome_screen.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodly',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomeScreen(),
      locale: Get.deviceLocale,
      translations: MyLocale(),
    );
  }
}
