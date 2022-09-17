import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';

import '../config/text_style.dart';

class PaymentTab extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? image;
  final VoidCallback? ontap;
  const PaymentTab({Key? key, this.title, this.subTitle, this.image, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
            child: Row(
              children: [
                SizedBox(
                  height: 34,
                  width: 40,
                  child: Image.asset(
                    image!,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                        style: pSemiBold18.copyWith(
                          fontSize: 18,
                        ),
                    ),
                    SizedBox(height: subTitle != "" ? 4 : 0),
                    subTitle != ""
                        ? Text(
                            subTitle!,
                      style: pRegular14.copyWith(
                        fontSize: 16,
                        color: ConstColors.text2Color,
                      ),
                          )
                        : const SizedBox(),
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: ConstColors.text2Color,
                  size: 20,
                )
              ],
            ),
          ),
          Divider(
            color: ConstColors.text2Color.withOpacity(0.1),
            thickness: 1,
            indent: 50,
          )
        ],
      ),
    );
  }
}
