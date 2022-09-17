import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';

class SocialButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  final String? image;
  const SocialButton({Key? key, this.text, this.color, this.onTap, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            SizedBox(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                image!,
                fit: BoxFit.fill,
              ),
            ),
            const Expanded(child: SizedBox()),
            Text(
              text!,
              style: pSemiBold18.copyWith(
              fontSize: 16,
              color: ConstColors.whiteFontColor,
            ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
