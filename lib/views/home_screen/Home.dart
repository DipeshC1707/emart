import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/controllers/homecontroller.dart';
import 'package:e_mart/views/cart_screen/Cartscreen.dart';
import 'package:e_mart/views/category_screen/Categoryscreen.dart';
import 'package:e_mart/views/home_screen/Homescreen.dart';
import 'package:e_mart/views/profile_screen/Profilescreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 35), label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 35), label: "Categories"),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 35), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 35), label: "Acount"),
    ];

    var navbody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => (Expanded(
                child: navbody.elementAt(controller.curnavindex.value),
              ))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.curnavindex.value,
          items: navbarItem,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(
            fontFamily: semibold,
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          onTap: ((value) => {controller.curnavindex.value = value}),
        ),
      ),
    );
  }
}
