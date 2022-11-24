import 'package:flutter/material.dart';
import 'package:plastofree/features/admin/screen/product_screen.dart';
import 'package:plastofree/features/categories/screen/categ.dart';
import 'package:plastofree/features/search/screen/search_screen.dart';
import 'package:plastofree/widgets/bottom_bar.dart';
//import 'package:plastofree/widgets/bottom_bar.dart';
import 'features/auth/screens/auth_screen.dart';
import 'features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => const AuthScreen(),);

    case HomeScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => const HomeScreen(),);

    case BottomBar.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => const BottomBar(),);

    case AddProduct.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => const AddProduct(),);

    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => CategoryDealsScreen(category: category,),);

    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => SearchScreen(searchQuery: searchQuery,),);

    default:
      return MaterialPageRoute(settings: routeSettings,
        builder: (_) => const Scaffold(),);
  }
}