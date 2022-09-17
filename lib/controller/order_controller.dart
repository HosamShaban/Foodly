import 'package:foodly/config/default_image.dart';
import 'package:foodly/model/order_model.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  List<OrderModel> orderList = [
    OrderModel("McDonald’s", DefaultImages.food4),
    OrderModel("Uncle Boy's", DefaultImages.food1),
    OrderModel("Burger King", DefaultImages.food3),
  ];
  List<OrderModel> pastList = [
    OrderModel("Cafe Brichor’s", DefaultImages.food2),
  ];
  List<OrderModel> menuList = [
    OrderModel("Cookie Sandwich", "USD7.4"),
    OrderModel("Combo Burger", "USD12.0"),
    OrderModel("Oyster Dish", "USD12.0"),
  ];
  List<String> topCookie = [
    "Chocolate Chip",
    "Cookies and Cream",
    "Funfetti",
    "M and M",
    "Red Velvet",
    "Peanut Butter",
    "Snickerdoodle",
    "White Chocolate Macadamia",
  ];
  List<bool> topCookieSelect = [
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> bottomCookie = [
    "Chocolate Chip",
    "Cookies and Cream",
    "Funfetti",
    "M and M",
    "Red Velvet",
    "Peanut Butter",
    "Snickerdoodle",
    "White Chocolate Macadamia",
  ];
  List<bool> bottomCookieSelect = [
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
}
