import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/main_Page/enum.dart';

import '../BottomNavBar.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectingMenu: MenuState.favorie,
      ),
    );
  }
}
