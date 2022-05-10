import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Pages/constants.dart';

class ProductSlider extends StatefulWidget {

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        child: Carousel(
          images: [
            AssetImage('assets/slider/manSlide.jpg'),
            AssetImage('assets/slider/womenSlide.jpg'),
            AssetImage('assets/slider/bagSlide.jpg'),
            AssetImage('assets/slider/watchSlide.jpg'),
            AssetImage('assets/slider/shoesSlide.jpg'),
          ],
          borderRadius: true,
          radius: Radius.circular(30),
          dotBgColor: Colors.transparent,
          dotIncreasedColor: kPrimaryColor,
          animationCurve: Curves.fastLinearToSlowEaseIn,
            animationDuration: Duration(
              milliseconds: 900,
            ),
        ),
      ),
    );
  }
}
