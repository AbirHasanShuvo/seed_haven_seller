import 'package:get/get.dart';
import 'package:seed_haven_seller/views/messages_screen/messages_screen.dart';
import 'package:seed_haven_seller/views/profile_screen/edit_profile.dart';
import 'package:seed_haven_seller/views/shop_screen/shop_settings_screen.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

import '../../const/const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => EditProfileScreen());
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
          TextButton(onPressed: () {}, child: normalText(text: logout))
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imageProduct)
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                .make(),
            title: boldText(text: 'Vendor name'),
            subtitle: normalText(text: 'vendor@gmail.com'),
          ),
          const Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                  profileButtonsIcons.length,
                  (index) => ListTile(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.to(() => ShopSetttings());
                              break;

                            case 1:
                              Get.to(() => MessagesScreen());
                              break;
                          }
                        },
                        leading: Icon(
                          profileButtonsIcons[index],
                          color: Colors.white,
                        ),
                        title: normalText(text: profileButtonsTitles[index]),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
