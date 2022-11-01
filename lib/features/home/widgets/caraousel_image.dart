import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: globalvariables.carouselImages.map(
            (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              width: 450,
              height: 200,
              fit: BoxFit.fitWidth,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 200,
        autoPlay: true
      ),
    );
  }
}