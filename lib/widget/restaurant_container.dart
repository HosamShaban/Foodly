import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';

import '../config/text_style.dart';

class RestaurantContainer extends StatelessWidget {
  final String title;
  final String image;
  const RestaurantContainer({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: pSemiBold18.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Colarodo, San Francisco",
                style: pRegular14.copyWith(
                  fontSize: 16,
                  color: ConstColors.text2Color,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
