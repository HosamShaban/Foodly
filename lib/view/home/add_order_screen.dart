import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/order_controller.dart';
import 'package:foodly/view/order/order_detail_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({Key? key}) : super(key: key);

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {

  String index = "01";
  int _counter = 0;

  final orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundColor: ConstColors.textColor.withOpacity(0.5),
              child: const Icon(
                Icons.close,
                color: ConstColors.whiteFontColor,
                size: 18,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                 Text(
                  "Cookie Sandwich",
                    style: pSemiBold20.copyWith(
                      fontSize: 24,
                    )
                ),
                const SizedBox(height: 10),
                Text(
                  "Shortbread, chocolate turtle cookies, and red\nvelvet. 8 ounces cream cheese, softened.",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.text2Color,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "\$\$  •  Chinese •  American  •  Deshi food",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.text2Color,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choice of top Cookie",
                      style: pSemiBold20.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xffEF9920).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Center(
                          child: Text(
                            "REQUIRED",
                            style: pSemiBold18.copyWith(
                              fontSize: 12,
                              color: const Color(0xffEF9920),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: orderController.topCookie.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 52,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    orderController.topCookieSelect[index] =
                                    !orderController.topCookieSelect[index];
                                  });
                                },
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: orderController
                                          .topCookieSelect[index] ==
                                          true
                                          ? ConstColors.primaryColor
                                          : const Color(0xff868686)
                                          .withOpacity(0.54),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundColor: orderController
                                          .topCookieSelect[index] ==
                                          true
                                          ? ConstColors.primaryColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              Text(
                                orderController.topCookie[index],
                                style: pSemiBold18.copyWith(
                                  fontSize: 16,
                                  color:
                                  ConstColors.textColor.withOpacity(0.84),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Divider(
                            color: ConstColors.text2Color.withOpacity(0.1),
                            thickness: 1,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choice of top Cookie",
                      style: pSemiBold20.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xffEF9920).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Center(
                          child: Text(
                            "REQUIRED",
                            style: pSemiBold18.copyWith(
                              fontSize: 12,
                              color: const Color(0xffEF9920),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          orderController.bottomCookieSelect[index] =
                          !orderController.bottomCookieSelect[index];
                        });
                      },
                      child: SizedBox(
                        height: 52,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: orderController
                                          .bottomCookieSelect[index] ==
                                          true
                                          ? ConstColors.primaryColor
                                          : const Color(0xff868686)
                                          .withOpacity(0.54),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundColor: orderController
                                          .bottomCookieSelect[index] ==
                                          true
                                          ? ConstColors.primaryColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  orderController.bottomCookie[index],
                                  style: pSemiBold18.copyWith(
                                    fontSize: 16,
                                    color:
                                    ConstColors.textColor.withOpacity(0.84),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Divider(
                              color: ConstColors.text2Color.withOpacity(0.1),
                              thickness: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Special Instructions",
                      style: pSemiBold18.copyWith(
                        fontSize: 16,
                        color: ConstColors.textColor.withOpacity(0.74),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: ConstColors.text2Color,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Divider(
                  color: ConstColors.text2Color.withOpacity(0.1),
                  thickness: 1,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circle(
                      Icons.remove,
                          () {
                        setState(() {
                          _counter--;
                        });
                          },
                    ),
                    const SizedBox(width: 20),
                    Text(
                          '$_counter',
                      style: pSemiBold18.copyWith(fontSize: 20),
                    ),
                    const SizedBox(width: 20),
                    circle(
                      Icons.add,
                          () {
                        setState(() {
                          _counter++;
                        });
                          },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                CusttomButton(
                  color: ConstColors.primaryColor,
                  text: "ADD TO ORDER (\$ 11.98)",
                  onTap: () {
                    Get.to(
                      const OrderDetailScreen(
                        title: "",
                      ),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget circle(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          color: const Color(0xffF8F8F8),
          shape: BoxShape.circle,
          border: Border.all(
            width: 0.8,
            color: const Color(0xff979797).withOpacity(0.5),
          ),
        ),
        child: Icon(
          icon,
          color: ConstColors.text2Color,
        ),
      ),
    );
  }
}
