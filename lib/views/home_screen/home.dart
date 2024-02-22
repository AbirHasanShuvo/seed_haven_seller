import 'package:flutter/material.dart';
import 'package:seed_haven_seller/const/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var bottomNavbar = [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: dashboard),
      BottomNavigationBarItem(icon: Image.asset(icProducts), label: products),
      BottomNavigationBarItem(icon: Image.asset(icOrders), label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(icGeneralSettings), label: settings),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: bottomNavbar),
      appBar: AppBar(),
      body: Container(),
    );
  }
}
