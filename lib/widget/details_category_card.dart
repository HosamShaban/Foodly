import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:get/get.dart';

import '../config/text_style.dart';

class DetailsCategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String rate;

  const DetailsCategoryCard({Key? key, required this.title, required this.image , required this.description , required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 160,
            width: Get.width,
            progressIndicatorBuilder: ((context, url, progress) {
              return ColoredBox(
                color: Colors.black12,
                child: Center(child: CircularProgressIndicator(value: progress.progress),),
              );
            }),

            errorWidget: (context, url, error) => const ColoredBox(
              color: Colors.black12,
              child: Icon(Icons.error , size: 50 , color: Colors.red),
            ),
            fit: BoxFit.fill,
          ),

        const SizedBox(height: 5),
        Text(
          title,
          style: pRegular14.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 7),

        Text(
          description,
          style: pRegular14.copyWith(
            fontSize: 14,
            color: ConstColors.text2Color,
          ),
        ),
        const SizedBox(height: 7),
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
             rate,
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.text2Color,
              ),
            ),
            const SizedBox(width: 2),
          ],
        ),
      ],
      ),
    );
  }
}
