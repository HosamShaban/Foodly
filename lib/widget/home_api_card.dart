import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';

class HomeApiCard extends StatelessWidget {
  final String? title;
  final String? image;
  final double? price;
  final String? description;

  const HomeApiCard({Key? key, required this.title, required this.image, required this.price, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("MSG_IMAGE_PATH $image  , MSG_TITLE $title");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      image != null ?  CachedNetworkImage(
          imageUrl: image!,
          height: 160,
          width: 220,
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

        ) : const SizedBox(),

        const SizedBox(height: 7),
       title != null ? Text(
                title!,
          textAlign: TextAlign.center,
          style: pRegular14.copyWith(
            fontSize: 18,

          ),
        ): const SizedBox(),
        const SizedBox(height: 7),
        SizedBox(
          height: 80,
          width: 150,
          child: description != null ? Text(
            description!,
            style: pRegular14.copyWith(
              fontSize: 14,
              height: 1.4,

              color: ConstColors.text2Color,
            ),
          ): const SizedBox(),
        ),
        const SizedBox(height: 6),
        price != null ? Text(
          "$price",

          style: pRegular14.copyWith(
            fontSize: 16,
            color: ConstColors.text2Color,
          ),
        ): const SizedBox(),
      ],
    );
  }
}
