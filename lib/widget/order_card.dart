import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:get/get.dart';

import '../config/text_style.dart';

class OrderCard extends StatelessWidget {
  final String title;
  final String image;
  const OrderCard({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 141,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style:const TextStyle(fontFamily: 'Cairo',),
                    ),
                    const SizedBox(height:2),
                    SizedBox(
                      width: Get.width - 170,
                      child:  Text(
                        "Shortbread, chocolate turtle\ncookies, and red velvet.",
                        style: pRegular14.copyWith(
                          fontSize: 16,
                          color: ConstColors.text2Color,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          "\$\$ . Chinese",
                          style: pSemiBold18.copyWith(
                            fontSize: 14,
                            color: ConstColors.text2Color,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(width: Get.width - 304),
                        Text(
                          "USD7.4",
                          style: pSemiBold18.copyWith(
                            fontSize: 14,
                            color: ConstColors.primaryColor,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Divider(
              color: ConstColors.text2Color.withOpacity(0.1),
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
