import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';

class CardTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? image;
  final bool? obscureText;

  const CardTextField({
    Key? key,
    this.controller,
    this.inputType,
    this.hintText,
    this.obscureText = false,
    this.image,
    this.labelText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            labelText!,
            style: pRegular14.copyWith(
              fontSize: 12,
              color: ConstColors.text2Color,
            ),
          ),
        ),
        SizedBox(
          height: 54,
          child: TextFormField(
            onFieldSubmitted: (v) {
              FocusScope.of(context).nextFocus();
            },
            textAlign: TextAlign.left,
            autofocus: false,
            autocorrect: true,
            maxLines: 1,
            obscureText: obscureText!,
            textInputAction: TextInputAction.next,
            style: const TextStyle(fontSize: 16),
            keyboardType: inputType,
            controller: controller,
            cursorColor: ConstColors.primaryColor,
            decoration: InputDecoration(
              prefixIcon: labelText != ""
                  ? const SizedBox()
                  : image != ""
                      ? Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.asset(
                            image!,
                          ),
                        )
                      : const SizedBox(),
              fillColor: const Color(0xffFBFBFB),
              filled: true,
              contentPadding: const EdgeInsets.only(
                  left: 10, top: 16, bottom: 16, right: 10),
              isDense: true,
              hintText: hintText,
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
      ],
    );
  }
}
