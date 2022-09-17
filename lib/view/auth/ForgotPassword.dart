import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/signin_controller.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/custom_textfield.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final signinController = Get.put(SignInController());
  @override
  void initState() {
    signinController.flag!.value = 0;
    super.initState();
  }

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
          "Forgot Password",
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: SafeArea(
        child: signinController.flag!.value == 0
            ? Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Text(
                "Forgot password",
                style: pSemiBold18.copyWith(
                  fontSize: 34,
                ),
              ),
              const  SizedBox(height: 20),
               Text(
                "Enter your email address and we will\nsend you a reset instructions.",
                 style: pRegular14.copyWith(
                   fontSize: 16,
                   color: ConstColors.text2Color,
                   height: 1.5,
                 ),
              ),
              const SizedBox(height: 35),
              CustomTextField(
                controller: TextEditingController(),
                hintText: "Email",
                inputType: TextInputType.emailAddress,
                obscureText: false,
                image: "",
                labelText: "EMAIL",
              ),
              const SizedBox(height: 34),
              CusttomButton(
                color: ConstColors.primaryColor,
                text: "RESET PASSWORD",
                onTap: () {
                  setState(() {
                    signinController.flag!.value = 1;
                  });
                },
              ),
            ],
          ),
        )
            : Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Reset email sent",
                 style: pSemiBold18.copyWith(
                   fontSize: 34,
                 ),
              ),
              const SizedBox(height: 20),
               Text(
                "We have sent a instructions email to",
                 style: pRegular14.copyWith(
                   fontSize: 16,
                   color: ConstColors.text2Color,
                 ),
              ),
              const SizedBox(height: 5),
              Row(
                children:  [
                  Text(
                    "Hosam@gmail.com",
                    style: pRegular14.copyWith(
                      fontSize: 16,
                      color: ConstColors.text2Color,
                    ),
                  ),
                  Text(
                    "Having problem?",
                    style: pRegular14.copyWith(
                      fontSize: 16,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              CusttomButton(
                color: ConstColors.primaryColor,
                text: "Send again",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
