import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';

import '../config/text_style.dart';

class TypeCard extends StatelessWidget {
  final String title;
  final String image;
  const TypeCard({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: pSemiBold18.copyWith(
              fontSize: 16,
              color: ConstColors.text2Color,
            ),
          )
        ],
      ),
    );
  }
}
