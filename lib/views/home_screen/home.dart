import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';

import '../../controllers/home_controller.dart';
import '../order_screen/order_screen.dart';
import '../product_screen/product_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreen = [
      const HomeScreen(),
      const ProductScreen(),
      const OrderScreen(),
      const ProfileScreen()
    ];
    var bottomNavbar = [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: dashboard),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProducts,
            width: 24,
            color: darkGrey,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(
            icOrders,
            width: 24,
            color: darkGrey,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(
            icGeneralSettings,
            width: 24,
            color: darkGrey,
          ),
          label: settings),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
          onTap: (index) {
            controller.navIndex.value = index;
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.navIndex.value,
          //this fixed means always show the label with the icon
          selectedItemColor: purpleColor,
          unselectedItemColor: darkGrey,
          items: bottomNavbar)),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: navScreen.elementAt(controller.navIndex.value))
          ],
        ),
      ),
    );
  }
}
