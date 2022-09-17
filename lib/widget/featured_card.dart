import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';

class FeaturedCard extends StatelessWidget {
  final String title;
  final String image;
  const FeaturedCard({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
         const Text(
          "\$\$ • Chinese",
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 11,
            color: ConstColors.text2Color,
          ),
        ),
      ],
    );
  }
}
