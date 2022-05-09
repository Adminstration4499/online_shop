import 'package:flutter/material.dart';
import 'package:online_shop/Pages/constants.dart';

import 'home_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,

      body: HomeBody(),

      drawer: Drawer(),
    );
  }
}
