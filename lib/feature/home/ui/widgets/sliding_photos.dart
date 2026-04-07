import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlidingPhotos extends StatelessWidget {
  const SlidingPhotos({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> items = [
    "assets/banners/Slider 1.png",
    "assets/banners/Slider 2.png",
    "assets/banners/Slider 3.png",
  ];
    return 
          CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.asset(items[itemIndex]),
            options: CarouselOptions(
              height: 165,
              aspectRatio: 1,
              viewportFraction: 0.7,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
            ),
          );
  }
}