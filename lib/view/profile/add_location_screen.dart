import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class AddLoacationScreen extends StatefulWidget {
  const AddLoacationScreen({Key? key}) : super(key: key);

  @override
  State<AddLoacationScreen> createState() => _AddLoacationScreenState();
}

class _AddLoacationScreenState extends State<AddLoacationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 20,
          ),
        ),
        title:  Text(
          "112".tr,
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TextFormField(
                style: const TextStyle(fontSize: 16),
                cursorColor: ConstColors.primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(DefaultImages.marker),
                  ),
                  fillColor: const Color(0xffFBFBFB),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, top: 16, bottom: 8, right: 10),
                  isDense: true,
                  hintText: "47".tr,
                  hintStyle: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.text2Color,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xffF3F2F2),
                    ),
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xffF3F2F2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 1,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "113".tr,
                   style: pSemiBold18.copyWith(
                     fontSize: 16,
                     color: ConstColors.text2Color,
                   ),
                ),
                 Text(
                  "114".tr,
                  style: pSemiBold18.copyWith(
                       fontSize: 14,
                 )
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  DefaultImages.marker,
                                ),
                                const SizedBox(width: 12),
                                 Text(
                                  "48".tr,
                                   style: pRegular14.copyWith(
                                     fontSize: 16,
                                   ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
