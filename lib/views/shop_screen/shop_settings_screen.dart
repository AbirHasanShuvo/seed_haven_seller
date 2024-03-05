import 'package:flutter/material.dart';
import 'package:seed_haven_seller/const/colors.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/const/strings.dart';
import 'package:seed_haven_seller/views/widgets/custom_textfield.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class ShopSetttings extends StatelessWidget {
  const ShopSetttings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: boldText(text: shopSettings, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(hint: nameHint, label: shopname),
            10.heightBox,
            customTextField(hint: shopAddressHint, label: address),
            10.heightBox,
            customTextField(hint: shopMobileHint, label: mobile),
            10.heightBox,
            customTextField(hint: shopWebsiteHint, label: website),
            10.heightBox,
            customTextField(
                hint: shopdescHint, label: description, isDesc: true)
          ],
        ),
      ),
    );
  }
}
