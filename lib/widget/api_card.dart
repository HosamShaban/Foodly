import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:get/get.dart';

class ApiCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String description;

  const ApiCard({Key? key, required this.title, required this.image, required this.price, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
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

      const SizedBox(height: 7),
      Text(
      title,
      textAlign: TextAlign.center,
      style: pRegular14.copyWith(
      fontSize: 20,
      ),
      ),
      const SizedBox(height: 5),
          SizedBox(
               child:Text(
                    description,
                 style: pRegular14.copyWith(
                   fontSize: 13.5,
                   height: 1.4,

                   color: ConstColors.text2Color,
                 ),
                  ),
                ),
           const SizedBox(height: 8),
          Text(
            "$price",

            style: pRegular14.copyWith(
              fontSize: 16,
              color: ConstColors.text2Color,
            ),
          ),
    ],
    );
  }
}
