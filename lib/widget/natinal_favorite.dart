import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';

class NationalFavorite extends StatelessWidget {
  final String title;
  final String image;
  final double height;
  const NationalFavorite({Key? key, required this.title, required this.image, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(DefaultImages.fastDelivery),
                    const SizedBox(width: 10),
                     Text(
                      "25min",
                      style: pSemiBold18.copyWith(
                        color: ConstColors.whiteFontColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset(DefaultImages.delivery),
                    const SizedBox(width: 10),
                     Text(
                      "25min",
                      style: pSemiBold18.copyWith(
                        color: ConstColors.whiteFontColor,
                        fontSize: 14,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      height: 20,
                      width: 36,
                      decoration: BoxDecoration(
                        color: ConstColors.primaryColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child:  Center(
                        child: Text(
                          "4.5",
                          style: pSemiBold18.copyWith(
                            color: ConstColors.whiteFontColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: pSemiBold18.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 4),
         Text(
          "Chinese • American",
          style: pRegular14.copyWith(
            fontSize: 16,
            color: ConstColors.text2Color,
          ),
        ),
      ],
    );
  }
}
