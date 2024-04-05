import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:seed_haven_seller/const/firebase_const.dart';
import 'package:seed_haven_seller/controllers/auth_controller.dart';
import 'package:seed_haven_seller/services/store_services.dart';
import 'package:seed_haven_seller/views/auth_screen/login_screen.dart';
import 'package:seed_haven_seller/views/profile_screen/edit_profile.dart';
import 'package:seed_haven_seller/views/widgets/loadin_indicator.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

import '../../const/const.dart';
import '../messages_screen/messages_screen.dart';
import '../shop_screen/shop_settings_screen.dart';

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
          TextButton(
              onPressed: () {
                Get.find<AuthController>().signoutMethod(context);
                Get.offAll(const LoginScreen());
              },
              child: normalText(text: logout))
        ],
      ),
      body: FutureBuilder(
          future: StoreServices.getProfile(currentUser!.uid),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return loadingIndicator(circleColor: Colors.white);
            } else {
              var data = snapshot.data!.docs;
              return Column(
                children: [
                  ListTile(
                    leading: Image.asset(imageProduct)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                   
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
                                title: normalText(
                                    text: profileButtonsTitles[index]),
                              )),
                    ),
                  ),
                ],
              );
            }
          }),
      // body: Column(
      //   children: [
      //     ListTile(
      //       leading: Image.asset(imageProduct)
      //           .box
      //           .roundedFull
      //           .clip(Clip.antiAlias)
      //           .make(),
      //       title: boldText(text: 'Vendor name'),
      //       subtitle: normalText(text: 'vendor@gmail.com'),
      //     ),
      //     const Divider(),
      //     10.heightBox,
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Column(
      //         children: List.generate(
      //             profileButtonsIcons.length,
      //             (index) => ListTile(
      //                   onTap: () {
      //                     switch (index) {
      //                       case 0:
      //                         Get.to(() => const ShopSetttings());
      //                         break;
      //
      //                       case 1:
      //                         Get.to(() => MessagesScreen());
      //                         break;
      //                     }
      //                   },
      //                   leading: Icon(
      //                     profileButtonsIcons[index],
      //                     color: Colors.white,
      //                   ),
      //                   title: normalText(text: profileButtonsTitles[index]),
      //                 )),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
