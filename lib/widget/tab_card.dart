import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/text_style.dart';

class TabCard extends StatelessWidget {
  final String? title;
  final String? image;
  final Color? color;
  final VoidCallback? onTap;
  final String? backImage;
  const TabCard(
      {Key? key,
      this.title,
      this.image,
      this.color,
      this.onTap,
      this.backImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 32,
                  width: 32,
                  child: SvgPicture.asset(
                    image!,
                    color: color,
                    fit: BoxFit.fill,
                  ),
                ),
                backImage != ""
                    ? Padding(
                        padding: const EdgeInsets.only(left: 3, top: 2),
                        child: SizedBox(
                          height: 20,
                          width: 14.34,
                          child: SvgPicture.asset(
                            backImage!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
            Text(
              title!,
              style: pSemiBold18.copyWith(
                fontSize: 10,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
