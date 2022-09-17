import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String description;

  const ProductCard({super.key, required this.title, required this.image, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
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
         Text(
          description,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 11,
            color: ConstColors.text2Color,
          ),
        ),
      ],
    );
  }
}
