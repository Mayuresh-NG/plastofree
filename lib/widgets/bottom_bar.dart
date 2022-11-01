import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';
import 'package:plastofree/features/account/screens/account.dart';
import 'package:plastofree/features/home/screens/home_screen.dart';
import 'package:plastofree/features/categories/screen/top_categories.dart';
//import 'package:provider/provider.dart';

//import '../providers/user_provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const Categories(),
    const AccountScreen(),
    const Center(child: Text('Cart page')),
    // const AccountScreen(),
    // const CartScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final userCartLen = context.watch<UserProvider>().user.cart.length;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _page,
        selectedItemColor: globalvariables.secondaryColor,
        unselectedItemColor: Colors.black,
        backgroundColor: globalvariables.backgroundColor,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 12) ,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: 'Home',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              // decoration: BoxDecoration(
              //   border: Border(
              //     bottom: BorderSide(
              //       color: _page == 1
              //           ? globalvariables.secondaryColor
              //           : globalvariables.backgroundColor,
              //     ),
              //   ),
              // ),
              child: const Icon(
                Icons.category_outlined,
              ),
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(
                Icons.person_outlined,
              ),
            ),
            label: 'Account',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              child: Badge(
                elevation: 10,
                badgeContent: const Text('2',style:TextStyle(color: Colors.white)),//userCartLen.toString()),
                badgeColor: globalvariables.secondaryColor,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}