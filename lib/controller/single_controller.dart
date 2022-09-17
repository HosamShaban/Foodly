import 'package:foodly/config/default_image.dart';
import 'package:foodly/model/order_model.dart';
import 'package:get/get.dart';

class SingleController extends GetxController {
  List<OrderModel> featureList = [
    OrderModel("Rich Table", DefaultImages.s1),
    OrderModel("Nethai Kitchen", DefaultImages.s2),
    OrderModel("Mayfield Bakery & Cafe", DefaultImages.s3),
  ];
  List<OrderModel> mostList = [
    OrderModel("Rich Table", DefaultImages.s4),
    OrderModel("Nethai Kitchen", DefaultImages.s5),
    OrderModel("Mayfield Bakery & Cafe", DefaultImages.s6),
  ];
  List<OrderModel> seaList = [
    OrderModel("Rich Table", DefaultImages.s7),
    OrderModel("Nethai Kitchen", DefaultImages.s8),
    OrderModel("Mayfield Bakery & Cafe", DefaultImages.s9),
  ];
  List<String> type = [
    "Seafood",
    "Beef & Lamb",
    "Appetizers",
    "Dim Sum",
  ];
  List<bool> boolList = [
    false,
    false,
    true,
    false,
  ];
}
