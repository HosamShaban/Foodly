import 'package:flutter/material.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/model/order_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final seachController = TextEditingController().obs;
  List<OrderModel> restaurantList = [
    OrderModel("Burger King", DefaultImages.r1),
    OrderModel("Uncle Boy's", DefaultImages.r2),
    OrderModel("Popeyes 1426 Flmst", DefaultImages.r3),
    OrderModel("Mixt - Yerba Buena", DefaultImages.r6),
    OrderModel("Split Bread - Russian", DefaultImages.food3),
    OrderModel("Burger King", DefaultImages.r4),
  ];

  List<OrderModel> categoryList = [
    OrderModel("81".tr, DefaultImages.c1),
    OrderModel("82".tr, DefaultImages.c2),
    OrderModel("83".tr, DefaultImages.c3),
    OrderModel("84".tr, DefaultImages.c4),
    OrderModel("85".tr, DefaultImages.c5),
    OrderModel("68".tr, DefaultImages.c6),
    OrderModel("59".tr, DefaultImages.c7),
    OrderModel("59".tr, DefaultImages.c8),
  ];
  List<String> searchList = [
    "86".tr,
    "68".tr,
    "87".tr,
    "70".tr,
    "88".tr,
    "84".tr,
    "89".tr,
    "90".tr,
  ];
}
