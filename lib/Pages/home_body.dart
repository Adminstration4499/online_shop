import 'package:flutter/material.dart';
import 'package:online_shop/Pages/search_Bar.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //Custom App Bar
            children: [
              customAppBar(),
              //Icon Search
              Column(
                //Search Bar
                children: [
                  SearchBar(),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
