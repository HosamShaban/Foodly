import 'package:foodly/config/default_image.dart';
import 'package:foodly/data/responses.dart';
import 'package:foodly/model/details_model.dart';
import 'package:foodly/model/order_model.dart';
import 'package:foodly/model/products_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List<OrderModel> featuredList = [
    OrderModel("Daylight Coffee", DefaultImages.h7),
    OrderModel("Mario Italiano", DefaultImages.h8),
    OrderModel("Daylight Coffee", DefaultImages.h7),
    OrderModel("Mario Italiano", DefaultImages.h8),
  ];
  List<OrderModel> pickList = [
    OrderModel("McDonald’s", DefaultImages.h5),
    OrderModel("Burger King", DefaultImages.h4),
    OrderModel("McDonald’s", DefaultImages.h5),
    OrderModel("Burger King", DefaultImages.h4),
  ];
  List<OrderModel> restaurantList = [
    OrderModel("McDonald’s", DefaultImages.h3),
    OrderModel("Cafe Brichor’s", DefaultImages.h2),
    OrderModel("Mario Italiano", DefaultImages.h1),
    OrderModel("Burger King", DefaultImages.h3),
  ];



  List<String> swiperImage = [
    DefaultImages.h9,
    DefaultImages.h3,
    DefaultImages.h1,
    DefaultImages.r2,
    DefaultImages.r1,
  ];

  List<String> categoryList = [
    "ALL".tr,
    "BRUNCH".tr,
    "DINNER".tr,
    "BURGERS".tr,
    "CHINESE".tr,
    "PIZZA".tr,
    "SALADS".tr,
    "SOUPS".tr,
    "BREAKFAST".tr,
  ];
  List<bool> categorySelectList = [
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> dietaryList = [
    "ANY".tr,
    "VEGETARIAN".tr,
    "HEALTHY".tr,
    "GLUTEN-FREE".tr,
  ];
  List<bool> dietarySelectList = [
    true,
    false,
    false,
    false,
  ];
  List<String> priceRangeList = [
    "\$",
    "\$\$",
    "\$\$\$",
    "\$\$\$\$",
    "\$\$\$\$\$",
  ];
  List<bool> priceRangeSelectList = [
    false,
    true,
    false,
    false,
    false,
  ];
  List<OrderModel> nationalList = [
    OrderModel("McDonald’s".tr, DefaultImages.h11),
    OrderModel("Tacos Nanchas".tr, DefaultImages.h8),
    OrderModel("McDonald’s".tr, DefaultImages.h10),
    OrderModel("Burger King".tr, DefaultImages.h11),
  ];
  List<OrderModel> national1List = [
    OrderModel("58".tr, DefaultImages.h12),
    OrderModel("58".tr, DefaultImages.h13),
    OrderModel("58".tr, DefaultImages.h11),
    OrderModel("58".tr, DefaultImages.h9),
  ];
  List<OrderModel> typeList = [
    OrderModel("78".tr, DefaultImages.h16),
    OrderModel("79".tr, DefaultImages.h11),
    OrderModel("80".tr, DefaultImages.h8),
    OrderModel("78".tr, DefaultImages.h9),
  ];
  List<OrderModel> newRestaurantList = [
    OrderModel("56".tr, DefaultImages.h8),
    OrderModel("57".tr, DefaultImages.h13),
    OrderModel("56".tr, DefaultImages.h7),
    OrderModel("57".tr, DefaultImages.h9),
  ];

  List<Product> products = [];
  Set<Category> category = {};


  Future<void> getProducts() async {
    products = await Responses.instance.fetchProduct();


    for(Product product in products){
      category.add(product.category!);
    }
    }
  List<DetailsModel> electronicList = [
    DetailsModel("Camera Canon" , " \$ 100 •  LCD •  3x Optical Zoom • Type Digital SLR" , "200+ Ratings", DefaultImages.c),
    DetailsModel("Headphone", " \$ 15 • Headphone Chip •  High-performance wireless Bluetooth • Type Beats Solo3 ", "100+ Ratings" , DefaultImages.headphone),
    DetailsModel("Microphone", " \$ 39 • Public speaking • Recording • Type Polsen", "50+ Ratings" ,DefaultImages.micro),
    DetailsModel("Iphone 13 Pro", " \$ 999 • Pro camera system Telephoto • 5‑core GPU  Superfast 5G cellular  • IOS 15 ", "700+ Ratings" , DefaultImages.iphone),
    DetailsModel("Laptop HP", " \$ 939 •  11th Gen Intel® Core™ i7 processor • 16 GB DDR4-3200 SDRAM • Battery weight 0.52 lb", "500+ Ratings" , DefaultImages.laptop),

  ];

  List<DetailsModel> clothesList = [
    DetailsModel("NIKE Men's shirt" , " \$ 30 •  NIKE Men's • 58% Cotton/42% Polyester • Machine Wash" , "200+ Ratings", DefaultImages.ch1),
    DetailsModel("Men's Shirt Summer", " \$ 20 •  High Quality Summer  •  Cotton Linen • Machine wash ", "100+ Ratings" , DefaultImages.ch2),
    DetailsModel("Summer Girl Dress", " \$ 16 • 100% Cotton • floral print • Hand Wash Only", "50+ Ratings" ,DefaultImages.ch3),
    DetailsModel("Women's Wide Pant", " \$ 35 • 100% Polyester • Full length pant  • Machine Wash ", "700+ Ratings" , DefaultImages.ch4),
    DetailsModel("Women's Fashion Handbags and Shoulder Bag ", " \$ 25 •  Polyester lining • High-quality PU leather, •  Guaranteed durability ", "500+ Ratings" , DefaultImages.ch5),

  ];



  @override
  void onInit() {
    super.onInit();
    getProducts();
    // getCategory();
  }
}
