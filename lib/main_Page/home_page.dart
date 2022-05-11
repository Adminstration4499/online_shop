import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BottomNavBar.dart';
import 'enum.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectingMenu: MenuState.home,
      ),
    );
  }
}
