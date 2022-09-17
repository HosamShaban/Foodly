import 'package:foodly/config/default_image.dart';
import 'package:foodly/model/order_model.dart';
import 'package:get/get.dart';

class BrowseController extends GetxController {
  List<OrderModel> browseList = [
    OrderModel("Rich Table", DefaultImages.b1),
    OrderModel("Nethai Kitchen", DefaultImages.b2),
    OrderModel("Mayfield Bakery & Cafe", DefaultImages.b3),
    OrderModel("Nethai Kitchen", DefaultImages.b1),
  ];
  List<OrderModel> pickList = [
    OrderModel("Nethai Kitchen", DefaultImages.p2),
    OrderModel("Lazy Bear", DefaultImages.p3),
    OrderModel("State Bird", DefaultImages.p5),
    OrderModel("Petit Creen", DefaultImages.p4),
    OrderModel("Rich Table", DefaultImages.p6),
    OrderModel("Cotogna", DefaultImages.p1),
  ];
}
