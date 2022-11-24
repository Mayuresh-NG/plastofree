import 'package:flutter/material.dart';

String uri ="http://192.168.10.51:3000";

class globalvariables
{
  static const secondaryColor = Color.fromRGBO(44, 95, 45, 1);
  static const backgroundColor = Color.fromRGBO(209, 229, 209, 1);
  static const Color greyBackgroundColor = Color(0xffebecee);
  static const selectedNavBarColor = Color.fromRGBO(255, 231, 122, 1);
  static const unselectedNavBarColor = Colors.white;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://img.freepik.com/free-psd/eco-bag-veggies-shopping-banner-template_23-2148439629.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-photo/disposable-plates-with-cups-cutlery-blue-copy-space-background_23-2148723831.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-photo/frame-ecological-products_23-2148576638.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-psd/environment-background-save-planet-text-psd_53876-141367.jpg?size=626&ext=jpg'
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'One',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Two',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Three',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Four',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Five',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Six',
      'image': 'images/essentials.png',
    },
    {
      'title': 'Seven',
      'image': 'images/essentials.png',
    },
  ];
}