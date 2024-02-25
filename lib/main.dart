import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/controllers/home_controller.dart';
import 'package:seed_haven_seller/firebase_options.dart';
import 'package:seed_haven_seller/views/auth_screen/login_screen.dart';
import 'package:seed_haven_seller/views/home_screen/home_screen.dart';
import 'package:seed_haven_seller/views/order_screen/order_screen.dart';
import 'package:seed_haven_seller/views/product_screen/product_screen.dart';
import 'package:seed_haven_seller/views/profile_screen/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0.0),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen()

    );
  }
}
