import 'package:flutter/material.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/widgets/custom_textfield.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imageProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                onPressed: () {},
                child: normalText(text: changeImage, color: darkGrey)),
            10.heightBox,
            const Divider(
              color: white,
            ),
            10.heightBox,
            customTextField(label: name, hint: 'eg. Abir Hasan'),
            10.heightBox,
            customTextField(label: password, hint: passwordHint),
            10.heightBox,
            customTextField(label: confirmPass, hint: passwordHint),
          ],
        ),
      ),
    );
  }
}
