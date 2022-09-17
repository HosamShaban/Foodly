import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/data/responses.dart';
import 'package:foodly/model/products_model.dart';
import 'package:get/get.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String image;
  const HomeCard({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),

        const SizedBox(height: 7),
        Text(
          title,
          style: pRegular14.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 2),
         Text(
          "62".tr,
           style: pRegular14.copyWith(
             fontSize: 16,
             color: ConstColors.text2Color,
           ),
        ),
        const SizedBox(height:8),
        Row(
          children: [
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
                    fontSize: 12,
                    color: ConstColors.whiteFontColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
             Text(
              "63".tr ,
               style: pSemiBold18.copyWith(
                 fontSize: 12,
                 color: ConstColors.text2Color,
               ),
            ),
             Text(
              "64".tr,
               style: pSemiBold18.copyWith(
                 fontSize: 12,
                 color: ConstColors.text2Color,
               ),
            ),
          ],
        )
      ],
    );
  }
}
