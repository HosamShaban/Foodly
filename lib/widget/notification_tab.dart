import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';

class NotificationTab extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? widget;
  final VoidCallback? ontap;
  const NotificationTab({Key? key, this.title, this.subTitle, this.widget, this.ontap}) : super(key: key);

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
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    DefaultImages.notify,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 12),
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
                widget!
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
