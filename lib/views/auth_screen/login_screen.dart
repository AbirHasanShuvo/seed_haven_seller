import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seed_haven_seller/const/colors.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/home_screen/home.dart';
import 'package:seed_haven_seller/views/widgets/our_button.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              normalText(
                text: welcome,
                size: 18.0,
              ),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    icLogo,
                    height: 70,
                    width: 70,
                  )
                      .box
                      .border(color: white)
                      .rounded
                      .padding(const EdgeInsets.all(8.0))
                      .make(),
                  10.widthBox,
                  boldText(text: appname, size: 20.0),
                ],
              ),
              40.heightBox,
              normalText(text: loginto, size: 18.0, color: lightGrey),
              10.heightBox,
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        // filled: true,
                        // fillColor: textfieldGrey,
                        hintText: emailHint,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: purpleColor,
                        )),
                  ),
                  10.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                        // filled: true,
                        // fillColor: textfieldGrey,
                        hintText: passwordHint,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: purpleColor,
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPassword.text.make()),
                  ),
                  20.heightBox,
                  SizedBox(
                      width: context.screenWidth - 100,
                      child: ourButton(
                          title: login,
                          onPress: () {
                            Get.to(() => Home());
                          }))
                ],
              )
                  .box
                  .white
                  .rounded
                  .outerShadowMd
                  .padding(const EdgeInsets.all(8.0))
                  .make(),
              10.heightBox,
              Center(
                child: normalText(text: anyProblem, color: lightGrey),
              ),
              const Spacer(),
              Center(
                child: boldText(text: credit),
              ),
              5.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
