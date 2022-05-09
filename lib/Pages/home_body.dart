import 'package:flutter/material.dart';
import 'package:online_shop/Pages/search_Bar.dart';
import 'package:online_shop/category/category.dart';
import 'package:online_shop/slider/slider.dart';

import 'custom_appBar.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            Column(
              //Custom App Bar
              children: [
                customAppBar(),
                //Icon Search
                Column(
                  //Search Bar
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SearchBar(),
                    SizedBox(
                      height: 20,
                    ),
                    ProductSlider(),
                    SizedBox(
                      height: 20,
                    ),
                    Category(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
