import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String price;
  final String number;
  const MenuCard({Key? key, required this.title, required this.price, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color(0xff868686).withOpacity(0.30),
                  ),
                ),
                child: Center(
                  child: Text(
                    number,
                    style: pSemiBold18.copyWith(
                      fontSize: 16,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: pSemiBold18.copyWith(),

              ),
              const Expanded(child: SizedBox()),
               Text(
                "USD7.4",
                style: pSemiBold18.copyWith(
                  fontSize: 16,
                  color: ConstColors.primaryColor,
                  height: 1.3,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
           Padding(
            padding:const EdgeInsets.only(left: 40),
            child: Text(
              "Shortbread, chocolate turtle\ncookies, and red velvet.",
              style: pRegular14.copyWith(
                fontSize: 16,
                color: ConstColors.text2Color,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Divider(
            color: const Color(0xff676767).withOpacity(0.10),
            thickness: 1,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
