import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BottomNavBar.dart';
import 'enum.dart';

class ShoppingCardPage extends StatefulWidget {
  @override
  State<ShoppingCardPage> createState() => _ShoppingCardPageState();
}

class _ShoppingCardPageState extends State<ShoppingCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Card"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectingMenu: MenuState.shoppingcard,
      ),
    );
  }
}
