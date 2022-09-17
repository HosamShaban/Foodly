import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/text_style.dart';

class HomeCategoryCard extends StatelessWidget {
  final String name;
  final String image;

  const HomeCategoryCard({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl: image,

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
        ),

        const SizedBox(height: 7),
        Text(
          name,
          textAlign: TextAlign.center,
          style: pRegular14.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }
}
