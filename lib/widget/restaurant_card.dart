import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:get/get.dart';

import '../config/text_style.dart';

class RestaurantCard extends StatelessWidget {
  final String title;
  final String image;
  const RestaurantCard({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 185,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: pRegular14.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
         Text(
          "\$\$  •  Chinese  •  American  •  Deshi food",
          style: pRegular14.copyWith(
            fontSize: 14,
            color: ConstColors.text2Color,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              "4.5",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.text2Color,
              ),
            ),
            const SizedBox(width: 2),
            const Icon(
              Icons.star,
              color: ConstColors.primaryColor,
              size: 16,
            ),
            const SizedBox(width: 10),
            Text(
              "200+ Ratings",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.text2Color,
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              DefaultImages.clock,
              color: ConstColors.text2Color,
            ),
            const SizedBox(width: 2),
            Text(
              "25 Min     •     ",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.text2Color,
              ),
            ),
            SvgPicture.asset(
              DefaultImages.delivery,
              color: ConstColors.text2Color,
            ),
            const SizedBox(width: 2),
            Text(
              "Free",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.text2Color,
              ),
            ),
          ],
        )
      ],
    );
  }
}
