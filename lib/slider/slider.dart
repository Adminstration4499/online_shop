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
        height: 200,
        child: Carousel(
          images: [
            AssetImage('assets/slider/Women1.jpg'),
            AssetImage('assets/slider/Women2.jpg'),
            AssetImage('assets/slider/Women3.jpg'),
            AssetImage('assets/slider/men1.jpg'),
            AssetImage('assets/slider/men2.jpg'),
          ],
          borderRadius: true,
          radius: Radius.circular(30),
          dotBgColor: Colors.transparent,
          dotIncreasedColor: kPrimaryColor,
          animationCurve: Curves.fastLinearToSlowEaseIn,
            animationDuration: Duration(
              milliseconds: 800,
            ),
        ),
      ),
    );
  }
}
